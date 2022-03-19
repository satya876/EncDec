//Avisos.js http://www.Buosi.org

function EscondeMensagem(NomeDiv)
{
    try
    {
        $(NomeDiv).html('');
    }
    catch (err)
    {
        alert(err.Message);
        return false;
    }
}

function MostrarMensagem(NomeDiv, Mensagem, tipoMensagem)
{
    try
    {
        $(NomeDiv).hide();
        $(NomeDiv).html('<div class="' + tipoMensagem + '">' + Mensagem + '</div>');
        $(NomeDiv).fadeIn(800);
    }
    catch (err)
    {
        alert(err.Message);
        return false;
    }
}