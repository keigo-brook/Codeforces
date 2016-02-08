import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Expression {
    public static void main(String args[] ) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int maxans=0;
        int tmp=0;        
        int a = Integer.parseInt(br.readLine());
        int b = Integer.parseInt(br.readLine());
        int c = Integer.parseInt(br.readLine());

        tmp = a*(b+c);
        if (maxans < tmp)   maxans = tmp;
        tmp = (a+b)*c;
        if (maxans < tmp)   maxans = tmp;
        tmp = a+b+c;
        if (maxans < tmp)   maxans = tmp;
        tmp = a+b*c;
        if (maxans < tmp)   maxans = tmp;
        tmp = a*b*c;
        if (maxans < tmp)   maxans = tmp;
        tmp = a*b+c;
        if (maxans < tmp)   maxans = tmp;
        System.out.println(maxans);
    }
}