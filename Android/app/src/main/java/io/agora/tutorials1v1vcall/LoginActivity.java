package io.agora.tutorials1v1vcall;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;

public class LoginActivity extends AppCompatActivity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        final EditText usernameEditText = findViewById(R.id.channel);
        final EditText passwordEditText = findViewById(R.id.password);
        final Spinner encryptionMode = findViewById(R.id.encrymode);
        final Button loginButton = findViewById(R.id.login);

        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(LoginActivity.this, VideoChatViewActivity.class);
                intent.putExtra(getString(R.string.channel),usernameEditText.getText().toString());
                intent.putExtra(getString(R.string.password),passwordEditText.getText().toString());
                intent.putExtra(getString(R.string.mode),encryptionMode.getSelectedItem().toString());
                startActivity(intent);
            }
        });
    }
}