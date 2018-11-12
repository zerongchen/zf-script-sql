package com.aotain.sql;

import java.io.*;


/**
 * 将所有的sql文件合并到一个文件中 Created by Louis on 4/8/2017.
 */
public class CombineAllSql {

    /**
     * @param args
     * @throws IOException
     */
    public static void main(String[] args)
        throws IOException {
        
        combineHivesql();
        
        combineDbsql();        
    }
    
    private static void combineHivesql() throws IOException{
        
        StringBuilder stringBuilder = new StringBuilder();
        // 获得target中的sql目录
        File f = new File(CombineAllSql.class.getResource("/").getPath() + "/hive_sql");

        // 找到所有create table语句的SQL文件
        FileFilter filterCreateTable = new FileFilter() {
            public boolean accept(File pathname) {
                return pathname.getName().startsWith("create_hive_");
            }
        };

        File[] createtablelist = f.listFiles(filterCreateTable);
        appendToSb(stringBuilder, createtablelist);
        
        
        // 将取出的内容写到all.sql文件中
        File file = new File(f.getAbsoluteFile() + "/zf-hive-all.sql");
        if (!file.exists()) {
            file.createNewFile();
        }
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(
            file), "UTF-8"));
        writer.write(stringBuilder.toString());
        writer.flush(); // 把缓存区内容压入文件
        writer.close(); // 最后记得关闭文件
    }
    
    /**
     * 合并数据库sql
     * @throws IOException
     */
    private static void combineDbsql() throws IOException{
        StringBuilder stringBuilder = new StringBuilder();
        // 获得target中的sql目录
        File f = new File(CombineAllSql.class.getResource("/").getPath() + "/sql");

        // 找到所有create table语句的SQL文件
        FileFilter filterCreateTable = new FileFilter() {
            public boolean accept(File pathname) {
                return pathname.getName().startsWith("create-table-");
            }
        };

        File[] createtablelist = f.listFiles(filterCreateTable);
        appendToSb(stringBuilder, createtablelist);
        
        // 找到所有create view语句的SQL文件
        FileFilter filterCreateView = new FileFilter() {
            public boolean accept(File pathname) {
                return pathname.getName().startsWith("create-view");
            }
        };

        File[] createviewlist = f.listFiles(filterCreateView);
        appendToSb(stringBuilder, createviewlist);                

        // 找到所有初始化数据SQL文件
        FileFilter filterData = new FileFilter() {
            public boolean accept(File pathname) {
                return pathname.getName().startsWith("data-");
            }
        };

        File[] datalist = f.listFiles(filterData);
        appendToSb(stringBuilder, datalist);

        // 将取出的内容写到all.sql文件中
        File file = new File(f.getAbsoluteFile() + "/zf-manage-all.sql");
        if (!file.exists()) {
            file.createNewFile();
        }
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(
            file), "UTF-8"));
        writer.write(stringBuilder.toString());
        writer.flush(); // 把缓存区内容压入文件
        writer.close(); // 最后记得关闭文件
    }

    /**
     * 把文件列表中的文件内容追加到StringBuilder
     * 
     * @param sb
     * @param filelist
     */
    private static void appendToSb(StringBuilder sb, File[] filelist) {

        // 判断列表是否为空
        if (filelist == null || filelist.length == 0) {
            return;
        }
        try {

            // 遍历所有的sql文件，取出内容
            for (File f : filelist) {
                // 建立一个输入流对象reader
                InputStreamReader reader = new InputStreamReader(new FileInputStream(f), "UTF-8");
                // 建立一个对象，它把文件内容转成计算机能读懂的语言
                BufferedReader br = new BufferedReader(reader);
                String line;
                while ((line = br.readLine()) != null) {
                    // 一次读入一行数据
                    sb.append(line + "\n");
                }
                reader.close();
                br.close();
            }
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }

}
