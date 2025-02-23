.class public Lorg/jf/baksmali/HelpCommand;
.super Lorg/jf/util/jcommander/Command;


# annotations
.annotation runtime Lcom/beust/jcommander/Parameters;
    commandDescription = "Shows usage information"
.end annotation

.annotation runtime Lorg/jf/util/jcommander/ExtendedParameters;
    commandAliases = {
        "h"
    }
    commandName = "help"
.end annotation


# instance fields
.field private commands:Ljava/util/List;
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "If specified, show the detailed usage information for the given commands"
    .end annotation

    .annotation runtime Lorg/jf/util/jcommander/ExtendedParameter;
        argumentNames = {
            "commands"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/util/jcommander/Command;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/baksmali/HelpCommand;->commands:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lorg/jf/baksmali/HelpCommand;->commandAncestors:Ljava/util/List;

    iget-object v1, p0, Lorg/jf/baksmali/HelpCommand;->commandAncestors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beust/jcommander/JCommander;

    iget-object v1, p0, Lorg/jf/baksmali/HelpCommand;->commands:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/jf/baksmali/HelpCommand;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lorg/jf/baksmali/HelpCommand;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "register-info"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "The --register-info parameter will cause baksmali to generate comments before and after every instruction containing register type information about some subset of registers. This parameter accepts a comma-separated listof values specifying which registers and how much information to include.\n    ALL: all pre- and post-instruction registers\n    ALLPRE: all pre-instruction registers\n    ALLPOST: all post-instruction registers\n    ARGS: any pre-instruction registers used as arguments to the instruction\n    DEST: the post-instruction register used as the output of the instruction\n    MERGE: any pre-instruction register that has been merged from multiple incoming code paths\n    FULLMERGE: an extended version of MERGE that also includes a list of all the register types from incoming code paths that were merged"

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v5

    invoke-static {v4, v5}, Lorg/jf/util/StringWrapper;->wrapStringOnBreaks(Ljava/lang/String;I)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "input"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v4, "Apks and oat files can contain multiple dex files. In order to specify a particular dex file, the basic syntax is to treat the apk/oat file as a directory. For example, to load the \"classes2.dex\" entry from \"app.apk\", you can use \"app.apk/classes2.dex\".\n\nFor ease of use, you can also specify a partial path to the dex file to load. For example, to load a entry named \"/system/framework/framework.jar:classes2.dex\" from \"framework.oat\", you can use any of the following:\n\"framework.oat/classes2.dex\"\n\"framework.oat/framework.jar:classes2.dex\"\n\"framework.oat/framework/framework.jar:classes2.dex\"\n\"framework.oat/system/framework/framework.jar:classes2.dex\"\n\nIn some rare cases, an oat file could have entries that can\'t be differentiated with the above syntax. For example \"/blah/blah.dex\" and \"blah/blah.dex\". In this case, the \"blah.oat/blah/blah.dex\" would match both entries and generate an error. To get around this, you can add double quotes around the entry name to specify an exact entry name. E.g. blah.oat/\"/blah/blah.dex\" or blah.oat/\"blah/blah.dex\" respectively."

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v5

    invoke-static {v4, v5}, Lorg/jf/util/StringWrapper;->wrapStringOnBreaks(Ljava/lang/String;I)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v6, "classpath"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, "When deodexing odex/oat files or when using the --register-info option, baksmali needs to load all classes from the framework files on the device in order to fully understand the class hierarchy. There are several options that control how baksmali finds and loads the classpath entries.\n\nL+ devices (ART):\nWhen deodexing or disassembling a file from an L+ device using ART, you generally just need to specify the path to the boot.oat file via the --bootclasspath/-b parameter. On pre-N devices, the boot.oat file is self-contained and no other files are needed. In N, boot.oat was split into multiple files. In this case, the other files should be in the same directory as the boot.oat file, but you still only need to specify the boot.oat file in the --bootclasspath/-b option. The other files will be automatically loaded from the same directory.\n\nPre-L devices (dalvik):\nWhen deodexing odex files from a pre-L device using dalvik, you generally just need to specify the path to a directory containing the framework files from the device via the --classpath-dir/-d option. odex files contain a list of framework files they depend on and baksmali will search for these dependencies in the directory that you specify.\n\nDex files don\'t contain a list of dependencies like odex files, so when disassembling a dex file using the --register-info option, and using the framework files from a pre-L device, baksmali will attempt to use a reasonable default list of classpath files based on the api level set via the -a option. If this default list is incorrect, you can override the classpath using the --bootclasspath/-b option. This option accepts a colon separated list of classpath entries. Each entry can be specified in a few different ways.\n - A simple filename like \"framework.jar\"\n - A device path like \"/system/framework/framework.jar\"\n - A local relative or absolute path like \"/tmp/framework/framework.jar\"\nWhen using the first or second formats, you should also specify the directory containing the framework files via the --classpath-dir/-d option. When using the third format, this option is not needed.\nIt\'s worth noting that the second format matches the format used by Android for the BOOTCLASSPATH environment variable, so you can simply grab the value of that variable from the device and use it as-is.\n\nExamples:\n  For an M device:\n    adb pull /system/framework/arm/boot.oat /tmp/boot.oat\n    baksmali deodex blah.oat -b /tmp/boot.oat\n  For an N+ device:\n    adb pull /system/framework/arm /tmp/framework\n    baksmali deodex blah.oat -b /tmp/framework/boot.oat\n  For a pre-L device:\n    adb pull /system/framework /tmp/framework\n    baksmali deodex blah.odex -d /tmp/framework\n  Using the BOOTCLASSPATH on a pre-L device:\n    adb pull /system/framework /tmp/framework\n    export BOOTCLASSPATH=`adb shell \"echo \\\\$BOOTCLASPATH\"`\n    baksmali disassemble --register-info ARGS,DEST blah.apk -b $BOOTCLASSPATH -d /tmp/framework"

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v5

    invoke-static {v4, v5}, Lorg/jf/util/StringWrapper;->wrapStringOnBreaks(Ljava/lang/String;I)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-static {v0, v5}, Lorg/jf/util/jcommander/ExtendedCommands;->getSubcommand(Lcom/beust/jcommander/JCommander;Ljava/lang/String;)Lcom/beust/jcommander/JCommander;

    move-result-object v6

    if-nez v6, :cond_5

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No such command: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Lorg/jf/util/jcommander/HelpFormatter;

    invoke-direct {v5}, Lorg/jf/util/jcommander/HelpFormatter;-><init>()V

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/jf/util/jcommander/HelpFormatter;->width(I)Lorg/jf/util/jcommander/HelpFormatter;

    move-result-object v5

    invoke-virtual {v6}, Lcom/beust/jcommander/JCommander;->getObjects()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/util/jcommander/Command;

    invoke-virtual {v6}, Lorg/jf/util/jcommander/Command;->getCommandHierarchy()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jf/util/jcommander/HelpFormatter;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    if-nez v4, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/jf/util/jcommander/HelpFormatter;

    invoke-direct {v1}, Lorg/jf/util/jcommander/HelpFormatter;-><init>()V

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->width(I)Lorg/jf/util/jcommander/HelpFormatter;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/HelpCommand;->commandAncestors:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    :goto_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/jf/util/jcommander/HelpFormatter;

    invoke-direct {v1}, Lorg/jf/util/jcommander/HelpFormatter;-><init>()V

    invoke-static {}, Lorg/jf/util/ConsoleUtil;->getConsoleWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->width(I)Lorg/jf/util/jcommander/HelpFormatter;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/baksmali/HelpCommand;->commandAncestors:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/jf/util/jcommander/HelpFormatter;->format(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
