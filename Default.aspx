<%@ page title="" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="_Default, App_Web_lkb34ul5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <style type="text/css">
        .ajax__calendar_container {
            z-index: 1000;
        }
    </style>
    <script type="text/javascript">
        function Showalert1() {
            $('#Avisos').fadeIn(6000)
            $('#Avisos').fadeOut(6000)
        }
    </script>
    <script type="text/javascript">
        function Showalert() {
            $('#MSG').fadeIn(6000)
            $('#MSG').fadeOut(6000)
        }
    </script>
    <script type="text/javascript">
        function oknumber(sender, e) {
            $find('ModalPopupPrintSelection').hide();
            __doPostBack('Button5', e);
        }
        function oncancel(sender, e) {
            $find('ModalPopupPrintSelection').hide();
            __doPostBack('Button6', e);
        }

    </script>
   
    <div class="page-content-wrapper">
        <div class="page-content">

            <div class="row">
                <div class="col-md-12">
                    <div id="Avisos"></div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div id="MSG">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="PanelMsg" runat="server" Visible="false" Style="background-color: #feefb3; height: 50px; width: 100%; border: 1px solid #9f6000">
                                    <div style="vertical-align: middle; margin-top: 10px;">
                                        <asp:Label ID="lblmsg" runat="server" Style="color: #9f6000; font-size: medium; font-weight: bold; margin-top: 50px; margin-left: 10px;"></asp:Label>
                                    </div>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>


            <div class="row">

                <div class="col-md-10 col-md-offset-1">
                    <div class="portlet box MyChange">

                        <div class="portlet-title">
                            <div class="caption">
                                Encryption and Decryption
                            </div>
                           
                        </div>

                        <div class="portlet-body">

                            <asp:Panel ID="pnlBody" runat="server">
                                <div class="horizontal-form">
                                    <div class="form-body">

                                        <div class="row margin-bottom-10">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label class="control-label label-sm">
                                                        Enter Text</label>
                                                    <asp:TextBox CssClass="form-control" ID="txtEncrypt" placeholder="Enter Text" TextMode="MultiLine"
                                                        TabIndex="1" runat="server"></asp:TextBox>
                                                </div>
                                               
                                            </div>
                                        </div>
                                         <div class="row margin-bottom-10">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label class="control-label label-sm">
                                                        Result</label>
                                                    <asp:TextBox CssClass="form-control" ID="txtResult" placeholder="Result" TextMode="MultiLine"
                                                        TabIndex="2" runat="server"></asp:TextBox>
                                                </div>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>
                            <div class="form-actions">
                                <asp:LinkButton ID="btnEncrypt" CssClass="btn MyChange" TabIndex="3" runat="server" OnClick="Encrypt_Click"
                                    OnClientClick="return RequireFields();"><i class="fa fa-check-square"> </i>  Encrypt </asp:LinkButton>
                                <asp:LinkButton ID="btnDecrypt" CssClass="btn MyChange" TabIndex="4" runat="server" OnClick="Decrypt_Click"
                                    ><i class="fa fa-check-square"> </i>  Decrypt </asp:LinkButton>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script type="text/javascript">
        var config = {
            '.chosen-select': {},
            '.chosen-select-deselect': { allow_single_deselect: true },
            '.chosen-select-no-single': { disable_search_threshold: 10 },
            '.chosen-select-no-results': { no_results_text: 'Oops, nothing found!' },
            '.chosen-select-width': { width: "95%" }
        }
        for (var selector in config) {
            $(selector).chosen(config[selector]);
        }
    </script>
    <link href="../../assets/Avisos/Avisos.css" rel="stylesheet" />

    <script src="../../assets/Avisos/Avisos.js" type="text/javascript"></script>
    <script src="../../assets/JS/Util.js" type="text/javascript"></script>

    <script src="../../assets/scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
    <script src="../../assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
    <script src="../../assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="../../assets/plugins/flot/jquery.flot.js" type="text/javascript"></script>
    <script src="../../assets/plugins/flot/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="../../assets/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
    <script src="../../assets/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <script src="../../assets/plugins/gritter/js/jquery.gritter.js" type="text/javascript"></script>
    <!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
    <script src="../../assets/plugins/fullcalendar/fullcalendar/fullcalendar.min.js"
        type="text/javascript"></script>
    <script src="../../assets/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js"
        type="text/javascript"></script>
    <script src="../../assets/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="../../assets/scripts/app.js" type="text/javascript"></script>
    <script src="../../assets/scripts/index.js" type="text/javascript"></script>
    <script src="../../assets/scripts/tasks.js" type="text/javascript"></script>
    <script src="../../assets/plugins/bootstrap-sessiontimeout/jquery.sessionTimeout.min.js"
        type="text/javascript"></script>
    <link href="../../assets/Dropdown/chosen.css" rel="stylesheet" />
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            App.init();

            // initialize session timeout settings
            $.sessionTimeout({
                title: 'Session Timeout Notification',
                message: 'Your session is about to expire.',
                keepAliveUrl: 'demo/timeout-keep-alive.php',
                redirUrl: '../Lock.aspx',
                logoutUrl: '../Default.aspx',
                //        warnAfter: 5000, //warn after 5 seconds
                //redirAfter: 10000, //redirect after 10 secons
            });
        });
    </script>
    <!-- END JAVASCRIPTS -->

    <script type="text/javascript">
        function RequireFields() {
            var CustomerName, Address, ContactPer1, Contact1, ContactPer2, Contact2, PANNo, Role, PinCode;
            var flag = true;


            CustomerName = $('#<%=txtEncrypt.ClientID%>').val();
            if (CustomerName == '' || CustomerName == null) {
                $('#<%=txtEncrypt.ClientID%>').css({
                    "border": "1px solid red",
                    "background": "#FFCECE"
                });
                flag = false;
            }
            else {
                $('#<%=txtEncrypt.ClientID%>').css({
                    "border": "1px solid #E5E5E5",
                    "background": "#FFF"
                });
            }

            
            if (!flag) {
                return false;
            }
        }
    </script>
</asp:Content>

