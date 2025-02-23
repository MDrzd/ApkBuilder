.class Lorg/codehaus/plexus/util/Java7Detector;
.super Ljava/lang/Object;


# static fields
.field private static final isJava7:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/codehaus/plexus/util/Java7Detector;->isJava7:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isJava7()Z
    .registers 1

    sget-boolean v0, Lorg/codehaus/plexus/util/Java7Detector;->isJava7:Z

    return v0
.end method
