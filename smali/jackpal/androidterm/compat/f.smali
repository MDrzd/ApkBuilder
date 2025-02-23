.class public final Ljackpal/androidterm/compat/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljackpal/androidterm/compat/f;->a()I

    move-result v0

    sput v0, Ljackpal/androidterm/compat/f;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljackpal/androidterm/compat/f;->b:Z

    return-void
.end method

.method private static final a()I
    .registers 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
