.class public final Lb/b/a/a/z;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/h/c;

.field private final b:Lb/b/f/c/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/b/h/c;IILb/b/f/c/b;)V
    .registers 6

    add-int/2addr p4, p3

    invoke-virtual {p2, p3, p4}, Lb/b/h/c;->a(II)Lb/b/h/c;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lb/b/a/a/z;-><init>(Ljava/lang/String;Lb/b/h/c;Lb/b/f/c/b;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lb/b/h/c;Lb/b/f/c/b;)V
    .registers 4

    invoke-direct {p0, p1}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lb/b/a/a/z;->a:Lb/b/h/c;

    iput-object p3, p0, Lb/b/a/a/z;->b:Lb/b/f/c/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/a/a/z;->a:Lb/b/h/c;

    invoke-virtual {v0}, Lb/b/h/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method
