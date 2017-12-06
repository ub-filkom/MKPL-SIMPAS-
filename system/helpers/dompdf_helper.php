<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
function pdf_create($html, $filename='', $stream=TRUE) 
{
    
    require_once("dompdf/autoload.inc.php"); 
    $dompdf = new Dompdf\Dompdf();
    $dompdf->load_html($html);
    $dompdf->set_paper('A4','potrait');
    $dompdf->render();
    if ($stream) {
        $dompdf->stream($filename.".pdf",array('Attachment'=>0));
    } else {
        return $dompdf->output();
    }
}
?>