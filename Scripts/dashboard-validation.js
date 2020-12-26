/// <reference path="jquery-1.11.2.js" />


$(document).ready(function () {
    $('[id$=get_user_profile]').show();

    /*
    // $('input[name="rbl_soft_training_instit"]').change(function () {
    $("table[id*=rbl_soft_training_instit] input").click(function () {
    $("#div_inst_info").hide();
    if ($(this).val() == "1") {
    $("#div_inst_info").show();
    }
    else {
    $("#div_inst_info").hide();
    }
    });
    */

    $('[id$=a_create_inst_profile]').click(function () {
        $("#div_inst_info").toggle();
        $('[id$=div_dash_main]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=pwd_change]').css("display", "none");
        $('[id$=change_profile_pic]').css("display", "none");
        $('[id$=post_article]').css("display", "none");
        $('[id$=ask_question]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=div_add_batch]').css("display", "none");

        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");
    });

    /*----------------Enable Profile---------------------*/
    $('[id$=a_profile]').click(function () {
        $('[id$=div_dash_main]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=pwd_change]').css("display", "none");
        $('[id$=change_profile_pic]').css("display", "none");
        $('[id$=post_article]').css("display", "none");
        $('[id$=ask_question]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $("#div_inst_info").css("display", "none");

        $('[id$=get_user_profile]').css("display", "block");
        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");
        return false;
    });

    $('[id$=Btn_Edit]').click(function () {
        $('[id$=div_dash_main]').css("display", "block");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=pwd_change]').css("display", "none");
        $('[id$=change_profile_pic]').css("display", "none");
        $('[id$=post_article]').css("display", "none");
        $('[id$=ask_question]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $("#div_inst_info").css("display", "none");
        $('[id$=div_add_batch]').css("display", "none");

        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");
        return false;
    });



    $('[id$=a_pwd_change]').click(function () {
        $('[id$=pwd_change]').toggle();
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=div_dash_main]').css("display", "none");
        $('[id$=change_profile_pic]').css("display", "none");
        $('[id$=post_article]').css("display", "none");
        $('[id$=ask_question]').css("display", "none");
        $("#div_inst_info").css("display", "none");
        $('[id$=div_add_batch]').css("display", "none");


        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");

    });

    $('[id$=a_change_profile_pic]').click(function () {
        $('[id$=change_profile_pic]').css("display", "block");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=div_dash_main]').css("display", "none");
        $('[id$=pwd_change]').css("display", "none");
        $('[id$=post_article]').css("display", "none");
        $('[id$=ask_question]').css("display", "none");
        $("#div_inst_info").css("display", "none");

        $('[id$=logo]').html("Change Profile Picture");
        $('[id$=trlogo]').css("display", "block");
        $('[id$=Btn_upload_pic]').css("display", "block");
        $('[id$=Btn_Inst_Logo]').css("display", "none");
        $('[id$=div_add_batch]').css("display", "none");

        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");
        $('[id$=a_add_inst_logo]').css("display", "block");
        $('[id$=a_add_inst_logo]').html("Add Institute Logo");
    });

    $('[id$=a_post_article]').click(function () {
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=post_article]').css("display", "block");
        $('[id$=div_dash_main]').css("display", "none");
        $('[id$=pwd_change]').css("display", "none");
        $('[id$=change_profile_pic]').css("display", "none");
        $('[id$=ask_question]').css("display", "none");
        $("#div_inst_info").css("display", "none");
    });

    $('[id$=a_pa_close]').click(function () {
        $('[id$=post_article]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "block");
        $("#div_inst_info").css("display", "none");
        $('[id$=div_add_batch]').css("display", "none");

        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");

    });

    $('[id$=a_ask_question]').click(function () {
        $('[id$=ask_question]').toggle();
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=div_dash_main]').css("display", "none");
        $('[id$=pwd_change]').css("display", "none");
        $('[id$=change_profile_pic]').css("display", "none");
        $('[id$=post_article]').css("display", "none");
        $("#div_inst_info").css("display", "none");
        $('[id$=div_add_batch]').css("display", "none");


        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");

    });


    /*    Validation for ASK Question     */
    $('[id$=Btn_Ask_Question]').click(function () {
        if ($('[id$=txt_ask_question]').val() == "") {
            $('[id$=txt_ask_question]').css("border-left-width", "5px");
            $('[id$=txt_ask_question]').css("border-left-style", "solid");
            $('[id$=txt_ask_question]').css("border-left-color", "#FF0000");
            $('[id$=error_display]').css("display", "block");
            $('[id$=lblerror]').html("Please Enter Your Question");
            $('[id$=txt_ask_question]').focus(function () {
                $('[id$=txt_ask_question]').css("border-left-width", "2px");
                $('[id$=txt_ask_question]').css("border-left-style", "solid");
                $('[id$=txt_ask_question]').css("border-left-color", "#dddddd");
                $('[id$=error_display]').css("display", "none");
            });
        }
        return false;
    });

    $('[id$=a_add_inst_logo]').click(function () {

        $("#div_inst_info").css("display", "none");
        $('[id$=div_dash_main]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=pwd_change]').css("display", "none");
        $('[id$=post_article]').css("display", "none");
        $('[id$=ask_question]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=div_add_batch]').css("display", "none");

        $('[id$=change_profile_pic]').css("display", "block");
        $('[id$=a_add_inst_logo]').html(" Institute Logo");
        $('[id$=logo]').html("Add Institute Logo");
        $('[id$=trlogo]').css("display", "block");
        $('[id$=trlogo]').html("Upload Institute Logo");
        $('[id$=Btn_upload_pic]').css("display", "none");
        $('[id$=Btn_Inst_Logo]').css("display", "block");

        $('[id$=a_add_inst_logo]').css("display", "block");
        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");
        $('[id$=a_add_inst_logo]').css("display", "block");
    });
    $('[id$=a_add_new_batch]').click(function () {

        $("#div_inst_info").css("display", "none");
        $('[id$=div_dash_main]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=pwd_change]').css("display", "none");
        $('[id$=post_article]').css("display", "none");
        $('[id$=ask_question]').css("display", "none");
        $('[id$=get_user_profile]').css("display", "none");
        $('[id$=change_profile_pic]').css("display", "none");

        $('[id$=div_add_batch]').css("display", "block");
        $('[id$=trlogo]').css("display", "none");
        $('[id$=Btn_upload_pic]').css("display", "none");
        $('[id$=Btn_Inst_Logo]').css("display", "block");

        $('[id$=a_add_inst_logo]').css("display", "block");
        $('[id$=a_profile]').css("display", "block");
        $('[id$=a_change_profile_pic]').css("display", "block");
        $('[id$=a_pwd_change]').css("display", "block");
        $('[id$=a_post_article]').css("display", "block");
        $('[id$=a_ask_question]').css("display", "block");
    });

});
