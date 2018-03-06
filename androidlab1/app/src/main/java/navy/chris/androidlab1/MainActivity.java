package navy.chris.androidlab1;

import android.content.Intent;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.*;


public class MainActivity extends AppCompatActivity {


    Button button;
    EditText user, pass;

    String username = "009181731";
    String password = "CMPE#137";
    int attempts = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //UI elements to use in
        button = (Button)findViewById(R.id.button);
        user = (EditText)findViewById(R.id.editText2);
        pass = (EditText)findViewById(R.id.editText3);

        button.setOnClickListener(new View.OnClickListener(){
            public void onClick(View v){

                if(user.getText().toString().equals(username)
                        && pass.getText().toString().equals(password)){
                Toast.makeText(getApplicationContext(),"You are now logged in...", Toast.LENGTH_SHORT).show();
                    startActivity(new Intent(MainActivity.this, thedonald.class));

                }  if(pass.getText().toString().equals(password.toLowerCase())){
                    Toast.makeText(getApplicationContext(),"Try using Uppercase in the password.", Toast.LENGTH_SHORT).show();
                } else {
                    if(attempts == 3){
                        button.setEnabled(false);
                        new Handler().postDelayed(new Runnable(){
                            public void run(){
                                button.setEnabled(true);
                            }
                        },30000);
                    } else if(user.getText().toString().equals(username) == false
                            || pass.getText().toString().equals(password) == false){
                        attempts++;
                        Toast.makeText(getApplicationContext(),"Incorrect " + (3 - attempts) + " tries left.", Toast.LENGTH_SHORT).show();
                    }
                }

            }
        });


    }
}
