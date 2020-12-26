/// <reference path="jquery-1.11.2.js" />

$(document).ready(function () {
    /*
    $('[id$=rbl_book_AEUD]').click(function () {
    if ($('[id$=rbl_book_AEUD]').val() == "1") {
    $('[id$=table_Add]').css("display", "block");
    $('[id$=table_Edit]').css("display", "none");
    $('[id$=table_Delete]').css("display", "none");
    }
    if ($('[id$=rbl_book_AEUD]').val() == "2") {
    $('[id$=table_Add]').css("display", "none");
    $('[id$=table_Edit]').css("display", "block");
    $('[id$=table_Delete]').css("display", "none");
    }
    if ($('[id$=rbl_book_AEUD]').val() == "3") {
    $('[id$=table_Add]').css("display", "none");
    $('[id$=table_Edit]').css("display", "none");
    $('[id$=table_Delete]').css("display", "block");
    }
    });
    */


    $("table[id*=rbl_book_AEUD] input").click(function () {
        if ($(this).val() == "1") {
            $("#div_inst_info").show();
            $('[id$=table_Add]').css("display", "block");
            $('[id$=div_add]').css("display", "block");
            $('[id$=table_Edit]').css("display", "none");
            $('[id$=table_Delete]').css("display", "none");
            $('[id$=div_edit]').css("display", "none");
            $('[id$=div_delete]').css("display", "none");
            $('[id$=lblresult]').empty();

        }
        else if ($(this).val() == "2") {
            $("#div_inst_info").show();
            $('[id$=table_Add]').css("display", "none");
            $('[id$=table_Edit]').css("display", "block");
            //if ($('[id$=btn_check]').style.display == "block") {
            if ($('[id$=txt_edit_bookid]').val() != 0) {
                $('[id$=div_edit]').css("display", "block");
            }
            else {
                $('[id$=div_edit]').css("display", "none");
            }
            $('[id$=table_Delete]').css("display", "none");
            $('[id$=div_add]').css("display", "none");
            $('[id$=div_delete]').css("display", "none");
            $('[id$=lblresult]').empty();
        }
        else if ($(this).val() == "3") {
            $("#div_inst_info").show();
            $('[id$=table_Add]').css("display", "none");
            $('[id$=table_Edit]').css("display", "none");
            $('[id$=div_add]').css("display", "none");
            $('[id$=div_edit]').css("display", "none");
            $('[id$=table_Delete]').css("display", "block");
            $('[id$=div_delete]').css("display", "block");
            $('[id$=lblresult]').empty();
        }
    });


});


 
