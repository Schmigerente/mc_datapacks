import java.io.*;

public class DatapackCreator {

    private static final String packMcmeta = "{\n\t\"pack\": {\n\t\t\"pack_format\": 8,\n\t\t\"description\": \"%s pack\"\n\t}\n}";
    private static final String load = "{\n\t\"values\": [\n\t\t\"%s:main\"\n\t]\n}";
    private static final String tick = "{\n\t\"values\": [\n\t\t\"%s:update\"\n\t]\n}";

    private static File pack;
    private static File data;

    private static final String mainPath = "minecraft\\tags\\functions";
    private static final String updatePath = "";

    private static String name;
    private static String mainDirectory;
    private static String[] addDirectories;

    public static void main(String[] args) {

        if (args.length < 1) {
            System.out.println("insufficient arguments");
            return;
        }

        name = args[0];

        if (args.length < 2) {
            mainDirectory = name;
        } else {
			mainDirectory = args[1];
		}

        pack = new File(name + ".zip");
        if (!pack.exists()) {
            pack.mkdir();
        }

        data = new File(pack.getName() + File.separator + "data");
        if (!data.exists()) {
            data.mkdir();
        }

        addDirectories = new String[args.length > 2 ? args.length : 2];
        if (args.length == 1) {
            addDirectories[1] = args[0];
        } else {
            for (int i = 1; i < args.length; i++) {
                addDirectories[i] = args[i];
            }
        }

        addDirectories[0] = "minecraft";

        try {
            createPackFile(pack);
            createDirs(data, addDirectories);

            createTagFiles(data, mainDirectory);
            createDefaultFiles(data, mainDirectory);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void createTagFiles(File base, String dir) throws IOException {
        File tags = new File(base.getPath() + "/minecraft/tags/functions");
        if (!tags.exists()) {
            tags.mkdirs();
        }
        FileWriter fileWriter;
		PrintWriter printWriter;
		fileWriter = new FileWriter(tags.getPath() + File.separator + "tick.json");
        printWriter = new PrintWriter(fileWriter);
        printWriter.printf(tick, mainDirectory);
        printWriter.close();
        fileWriter = new FileWriter(tags.getPath() + File.separator + "load.json");
        printWriter = new PrintWriter(fileWriter);
        printWriter.printf(load, mainDirectory);
        printWriter.close();
    }

    private static void createDefaultFiles(File base, String dir) throws IOException {
        File tags = new File(base.getPath() + File.separator + dir + File.separator + "functions");
        if (!tags.exists()) {
            tags.mkdirs();
        }
        FileWriter fileWriter;
        fileWriter = new FileWriter(tags.getPath() + File.separator + "main.mcfunction");
        fileWriter.close();
        fileWriter = new FileWriter(tags.getPath() + File.separator + "update.mcfunction");
        fileWriter.close();
        fileWriter = new FileWriter(tags.getPath() + File.separator + "remove.mcfunction");
        fileWriter.close();
    }

    private static void createDirs(File base, String[] names) {
        for (String s : names) {
            File dir = new File(base.getPath() + File.separator + s);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            System.out.println(dir.getPath());
            createDir(dir, "advancements");
            createDir(dir, "functions");
            createDir(dir, "item_modifiers");
            createDir(dir, "loot_tables");
            createDir(dir, "predicates");
            createDir(dir, "recipes");
            createDir(dir, "structures");
            createDir(dir, "tags");
            createDir(dir, "dimension");
            createDir(dir, "dimension_type");
            createDir(dir, "worldgen");
        }
    }

    private static void createDir(File base, String name) {
        File dir = new File(base.getPath() + File.separator + name);
        if (!dir.exists()) {
            dir.mkdir();
        }

        if (name.equals("tags")) {
            createDir(dir, "blocks");
            createDir(dir, "entity_types");
            createDir(dir, "fluids");
            createDir(dir, "game_events");
            createDir(dir, "items");
            return;
        }

        if (name.equals("worldgen")) {
            createDir(dir, "biome");
            createDir(dir, "configured_carver");
            createDir(dir, "configured_feature");
            createDir(dir, "configured_structure_feature");
            createDir(dir, "configured_surface_builder");
            createDir(dir, "noise_settins");
            createDir(dir, "placed_feature");
            createDir(dir, "processor_list");
            createDir(dir, "template_pool");
            return;
        }
    }

    private static void createPackFile(File dir) throws IOException {
        FileWriter fileWriter = new FileWriter(dir.getName() + File.separator + "pack.mcmeta");
        PrintWriter printWriter = new PrintWriter(fileWriter);
        printWriter.printf(packMcmeta, name);
        printWriter.close();
    }
}
