.class final Lcom/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private synthetic a:Lcom/a/a/a;


# direct methods
.method constructor <init>(Lcom/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/b;->a:Lcom/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    :goto_0
    if-ge p2, p3, :cond_4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    const/16 p5, 0x30

    const/4 p6, 0x1

    if-lt p4, p5, :cond_0

    const/16 p5, 0x39

    if-gt p4, p5, :cond_0

    goto :goto_1

    :cond_0
    const/16 p5, 0x61

    if-lt p4, p5, :cond_1

    const/16 p5, 0x66

    if-gt p4, p5, :cond_1

    goto :goto_1

    :cond_1
    const/16 p5, 0x41

    if-lt p4, p5, :cond_2

    const/16 p5, 0x46

    if-gt p4, p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p6, 0x0

    :goto_1
    if-nez p6, :cond_3

    const-string p1, ""

    return-object p1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
