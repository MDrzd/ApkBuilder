.class final Lcom/gmail/heagoo/common/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    const/16 p5, 0x22

    if-eq p4, p5, :cond_0

    const/16 p5, 0x2a

    if-eq p4, p5, :cond_0

    const/16 p5, 0x2f

    if-eq p4, p5, :cond_0

    const/16 p5, 0x3a

    if-eq p4, p5, :cond_0

    const/16 p5, 0x3c

    if-eq p4, p5, :cond_0

    const/16 p5, 0x5c

    if-eq p4, p5, :cond_0

    const/16 p5, 0x7c

    if-eq p4, p5, :cond_0

    packed-switch p4, :pswitch_data_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string p1, ""

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
