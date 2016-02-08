import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Scanner;
import java.util.*;

public class Towers {
    public static void main(String args[] ) throws Exception {

        Scanner scan = new Scanner(System.in);
        int max=0;
        int s = scan.nextInt();
        int m = scan.nextInt();
        int[] input = new int[s];

        for(int i=0; i<s; i++) {
            input[i] = scan.nextInt();
            if(input[i] > max) max = input[i];
        }
        
        for(int i=0; i<m;i++) {
            

        }
    }



    static int setMax(int[] in) {
        int max=0;
        for(int i=0; i<in.length; i++) {
            if(in[i] > max) max=in[i];
        }
        return max;
    }
}