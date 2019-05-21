/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package imagetoprocessing;

import java.util.*;
import java.io.*;
import java.awt.image.BufferedImage; 
import javax.imageio.ImageIO; 
/**
 *
 * @author Joshua
 */


public class ImageToProcessing {

    static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    static StringTokenizer st;
    /**
     * @param args the command line arguments
     */
    static List<Integer> r1 = new ArrayList<Integer>();
    static List<Integer> g1 = new ArrayList<Integer>();
    static List<Integer> b1 = new ArrayList<Integer>();
    static int size=0;
    public static void main(String[] args) throws Exception{
        // TODO code application logic here
        System.out.println("put the RGB of colours you want to ignore, enter -1 in all fields to run.");
        
        System.out.println("Enter R G B");
        r1.add(readInt());
        g1.add(readInt());
        b1.add(readInt());
        while(r1.get(size)!=-1&&g1.get(size)!=-1&&b1.get(size)!=-1){
            System.out.println("Enter R G B");
            r1.add(readInt());
            g1.add(readInt());
            b1.add(readInt());
            size++;
        }
        System.out.println("Add \'x+\' and \'y+\' to allow you to move the image? Y or N");
        boolean movement=readCharacter()=='Y'?true:false;
        System.out.println("Size of each pixel.");
        int pixelSize=readInt();
        BufferedImage img = null; 
        File f = null; 
        FileWriter fileWriter = new FileWriter("C:\\Users\\Joshua\\Desktop\\ProcessingWorks\\JavaProgramsForShortcuts\\ImageToProcessingCode\\out.txt");
        FileWriter fileWriter1 = new FileWriter("C:\\Users\\Joshua\\Desktop\\ProcessingWorks\\JavaProgramsForShortcuts\\ImageToProcessingCode\\debug.txt");
        PrintWriter printWriter = new PrintWriter(fileWriter);
        PrintWriter printWriter1 = new PrintWriter(fileWriter1);
        
        try
        { 
            f = new File("C:\\Users\\Joshua\\Desktop\\ProcessingWorks\\JavaProgramsForShortcuts\\ImageToProcessingCode\\in.png"); 
            img = ImageIO.read(f); 
        } 
        catch(Exception e) 
        { 
            System.out.println(e); 
        } 
        for(int i=0; i<img.getWidth(); i++){
            for(int j=0; j<img.getHeight(); j++){
                int p = img.getRGB(i,j);
                int a = (p>>24) & 0xff; 
                int r = (p>>16) & 0xff;
                int g = (p>>8) & 0xff;
                int b = p & 0xff; 
                if(!ignoreColour(p)&&a!=0){
                    //16776960
                    System.out.printf("%d %d, %d, %d, %d\n",p,a,r,g,b);
                    if(pixelSize<=1){
                        if(movement)printWriter.printf("col(%d,%d,%d);\npoint(x+%d,y+%d);\n",r,g,b,i,j);
                        else printWriter.printf("col(%d,%d,%d);\npoint(%d,%d);\n",r,g,b,i,j);
                    }else{
                        if(movement)printWriter.printf("col(%d,%d,%d);\rect(%d*x,%d*y,%d,%d);\n",r,g,b,pixelSize*i,pixelSize*j,pixelSize,pixelSize);
                        else printWriter.printf("col(%d,%d,%d);\nrect(%d,%d,%d,%d);\n",r,g,b,pixelSize*i,pixelSize*j,pixelSize,pixelSize);
                    }
                    printWriter1.printf("%d %d, %d, %d, %d\n",p,a,r,g,b);
                }
            }
        }
        printWriter.close(); 
        printWriter1.close(); 
    }
    static boolean ignoreColour(int p){
        int r = (p>>16) & 0xff;
        int g = (p>>8) & 0xff;
        int b = p & 0xff; 
        for(int i=0; i<size; i++){
            if(r==r1.get(i)&&g==g1.get(i)&&b==b1.get(i))return true;
        }
        return false;
    }

    static String next () throws IOException {
        if (st == null || !st.hasMoreTokens())
            st = new StringTokenizer(br.readLine());
        return st.nextToken();
    }

    static long readLong() throws IOException {
        return Long.parseLong(next());
    }

    static int readInt() throws IOException {
         return Integer.parseInt(next());
    }

    static double readDouble() throws IOException {
         return Double.parseDouble(next());
    }

    static char readCharacter() throws IOException {
          return next().charAt(0);
    }

    static String readLine() throws IOException {
        return br.readLine().trim();
    }
}
