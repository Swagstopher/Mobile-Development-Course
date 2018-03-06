package navy.chris.mytube;

        import android.content.Intent;
        import android.os.Bundle;
        import android.support.design.widget.TabLayout;
        import android.support.v7.app.AppCompatActivity;
        import android.support.v7.widget.Toolbar;
        import android.widget.ImageView;

        import com.squareup.picasso.Picasso;

public class TabActivity extends AppCompatActivity {

    String videoThumbnail1 = "https://i.ytimg.com/vi/1y6smkh6c-0/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=SqMBKskH2uWdp9jGMQgGFK_ooiU";
    String videoID1 = "1y6smkh6c-0";
    String videoTitle1 = "Swedish House Mafia - Don't You Worry Child ft. John Martin";
    String videoPublished1 = "Sep 14, 2012";

    String getVideoThumbnail2 = "https://i.ytimg.com/vi/unjGYqPkhdc/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=SpsR6JSvmPA7DieitZ7-Gb1S54I";
    String videoID2 = "unjGYqPkhdc";
    String videoTitle2 = "Cristiano Ronaldo receives his fourth Ballon d'Or!";
    String videoPublished2 = "Dec 12, 2016";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tab);

        Intent intent = getIntent();
        Bundle bd = intent.getExtras();
        String token = (String) bd.get("token");



    }


}