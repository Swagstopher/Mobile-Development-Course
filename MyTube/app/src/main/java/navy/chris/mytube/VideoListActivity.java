package navy.chris.mytube;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

import com.google.android.gms.vision.text.Text;
import com.squareup.picasso.Picasso;

public class VideoListActivity extends AppCompatActivity {

    String videoThumbnail1 = "https://i.ytimg.com/vi/1y6smkh6c-0/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=SqMBKskH2uWdp9jGMQgGFK_ooiU";
    String videoID1 = "1y6smkh6c-0";
    String videoTitle1 = "Swedish House Mafia - Don't You Worry Child ft. John Martin";
    String videoPublished1 = "Sep 14, 2012";

    String videoThumbnail2 = "https://i.ytimg.com/vi/unjGYqPkhdc/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=SpsR6JSvmPA7DieitZ7-Gb1S54I";
    String videoID2 = "unjGYqPkhdc";
    String videoTitle2 = "Cristiano Ronaldo receives his fourth Ballon d'Or!";
    String videoPublished2 = "Dec 12, 2016";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_video_list);


        Intent intent = getIntent();
        Bundle bd = intent.getExtras();

        String token = (String) bd.get("token");

        ImageButton button1 = (ImageButton) findViewById(R.id.video_one);
        ImageButton button2 = (ImageButton) findViewById(R.id.video_two);



        TextView title1 = (TextView) findViewById(R.id.title1);
        title1.setText(videoTitle1);
        TextView title2 = (TextView) findViewById(R.id.title2);
        title2.setText(videoTitle2);

        TextView published1 = (TextView) findViewById(R.id.published_one);
        published1.setText(videoPublished1);
        TextView published2 = (TextView) findViewById(R.id.publish_two);
        published2.setText(videoPublished2);




        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent nextent = new Intent(view.getContext(), MyTubeActivity.class);
                nextent.putExtra("videoID", videoID1);
                startActivity(nextent);
            }
        });

        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent nextent = new Intent(view.getContext(), MyTubeActivity.class);
                nextent.putExtra("videoID", videoID2);
                startActivity(nextent);
            }
        });

        ImageButton imageOne = (ImageButton) findViewById(R.id.video_one);
        Picasso.with(this).load(videoThumbnail1).into(imageOne);

        ImageButton imageTwo = (ImageButton) findViewById(R.id.video_two);
        Picasso.with(this).load(videoThumbnail2).into(imageTwo);


    }
}
