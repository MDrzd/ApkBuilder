.class public abstract Lorg/codehaus/plexus/util/cli/CommandLineUtils;
.super Ljava/lang/Object;


# static fields
.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/codehaus/plexus/util/cli/StreamFeeder;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->handleException(Lorg/codehaus/plexus/util/cli/StreamFeeder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->handleException(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V

    return-void
.end method

.method public static executeCommandLine(Lorg/codehaus/plexus/util/cli/Commandline;Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;)I
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->executeCommandLine(Lorg/codehaus/plexus/util/cli/Commandline;Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;I)I

    move-result p0

    return p0
.end method

.method public static executeCommandLine(Lorg/codehaus/plexus/util/cli/Commandline;Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;I)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->executeCommandLineAsCallable(Lorg/codehaus/plexus/util/cli/Commandline;Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;I)Lorg/codehaus/plexus/util/cli/CommandLineCallable;

    move-result-object p0

    invoke-interface {p0}, Lorg/codehaus/plexus/util/cli/CommandLineCallable;->call()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static executeCommandLine(Lorg/codehaus/plexus/util/cli/Commandline;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->executeCommandLine(Lorg/codehaus/plexus/util/cli/Commandline;Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;I)I

    move-result p0

    return p0
.end method

.method public static executeCommandLine(Lorg/codehaus/plexus/util/cli/Commandline;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;I)I
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->executeCommandLine(Lorg/codehaus/plexus/util/cli/Commandline;Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;I)I

    move-result p0

    return p0
.end method

.method public static executeCommandLineAsCallable(Lorg/codehaus/plexus/util/cli/Commandline;Ljava/io/InputStream;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;I)Lorg/codehaus/plexus/util/cli/CommandLineCallable;
    .registers 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/Commandline;->execute()Ljava/lang/Process;

    move-result-object v2

    new-instance v6, Lorg/codehaus/plexus/util/cli/CommandLineUtils$1;

    invoke-direct {v6, v2}, Lorg/codehaus/plexus/util/cli/CommandLineUtils$1;-><init>(Ljava/lang/Process;)V

    invoke-static {v6}, Lorg/codehaus/plexus/util/cli/ShutdownHookUtils;->addShutDownHook(Ljava/lang/Thread;)V

    new-instance p0, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/plexus/util/cli/CommandLineUtils$2;-><init>(Ljava/io/InputStream;Ljava/lang/Process;Lorg/codehaus/plexus/util/cli/StreamConsumer;Lorg/codehaus/plexus/util/cli/StreamConsumer;ILjava/lang/Thread;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cl cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSystemEnvVars()Ljava/util/Properties;
    .registers 1

    const-string v0, "windows"

    invoke-static {v0}, Lorg/codehaus/plexus/util/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->getSystemEnvVars(Z)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemEnvVars(Z)Ljava/util/Properties;
    .registers 7

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static handleException(Lorg/codehaus/plexus/util/cli/StreamFeeder;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/cli/CommandLineException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failure processing %s."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamFeeder;->getException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/codehaus/plexus/util/cli/CommandLineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static handleException(Lorg/codehaus/plexus/util/cli/StreamPumper;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamPumper;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/codehaus/plexus/util/cli/CommandLineException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failure processing %s."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/cli/StreamPumper;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/codehaus/plexus/util/cli/CommandLineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isAlive(Ljava/lang/Process;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v0, v1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->quote(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quote(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lorg/codehaus/plexus/util/cli/CommandLineUtils;->quote(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quote(Ljava/lang/String;ZZZ)Ljava/lang/String;
    .registers 5

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\\\'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\\\'"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/codehaus/plexus/util/cli/CommandLineException;

    const-string p1, "Can\'t handle single and double quotes in same argument"

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/cli/CommandLineException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x22

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\\\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\\\""

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\\\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :try_start_0
    aget-object v2, p0, v1

    const/16 v3, 0x22

    invoke-static {v2, v3}, Lorg/codehaus/plexus/util/StringUtils;->quoteAndEscape(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error quoting argument: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static translateCommandline(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\"\' "

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    :goto_0
    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    packed-switch v6, :pswitch_data_0

    const-string v8, "\'"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :pswitch_0
    const-string v8, "\""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :pswitch_1
    const-string v8, "\'"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_2
    goto :goto_0

    :cond_2
    const-string v8, "\""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    const-string v8, " "

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    if-eq v6, v3, :cond_7

    if-eq v6, v5, :cond_7

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0

    :cond_7
    new-instance v0, Lorg/codehaus/plexus/util/cli/CommandLineException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unbalanced quotes in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/codehaus/plexus/util/cli/CommandLineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
