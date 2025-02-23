.class public abstract Ljackpal/androidterm/a/a/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljackpal/androidterm/a/a/e;
    .registers 3

    if-eqz p0, :cond_0

    sget v0, Ljackpal/androidterm/a/a/b;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Ljackpal/androidterm/a/a/f;

    invoke-direct {v0, p0}, Ljackpal/androidterm/a/a/f;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract a()I
.end method
