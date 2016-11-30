require 'calabash-android/abase'

class LoginPage < Calabash::ABase

    def trait
        "android.widget.Button id:'welcome_btn_login'"
    end

    def login(user,pass)
        touch(log_in_button)

        enter_text(username_field, user)
        enter_text(password_field, pass)

        hide_soft_keyboard

        touch(log_in_action)
    end

    def log_in_button
        "android.widget.Button id:'welcome_btn_login'"
    end

    def log_in_action
        "android.widget.Button id:'login_btn_login'"
    end

    def field(field_id)
        "android.widget.TextView id:'#{field_id}'"
    end

    def username_field
        field('login_username')
    end
    
    def password_field
        field('login_password')
    end

end
