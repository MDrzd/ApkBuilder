.class public Lcom/gmail/heagoo/neweditor/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lb/b/c/b/p;

.field private final e:Z


# direct methods
.method public constructor <init>(IIILb/b/c/b/p;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, La/a/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, La/a/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, La/a/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    iput p1, p0, Lcom/gmail/heagoo/neweditor/x;->a:I

    iput p2, p0, Lcom/gmail/heagoo/neweditor/x;->b:I

    iput p3, p0, Lcom/gmail/heagoo/neweditor/x;->c:I

    iput-object p4, p0, Lcom/gmail/heagoo/neweditor/x;->d:Lb/b/c/b/p;

    iput-boolean p5, p0, Lcom/gmail/heagoo/neweditor/x;->e:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "format == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus nextOpcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus family"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus opcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/x;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/x;->b:I

    return v0
.end method

.method public c()Lb/b/c/b/p;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/x;->d:Lb/b/c/b/p;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/neweditor/x;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/x;->a:I

    invoke-static {v0}, Lb/b/d/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/x;->c:I

    return v0
.end method

.method public g()Lcom/gmail/heagoo/neweditor/x;
    .registers 4

    iget v0, p0, Lcom/gmail/heagoo/neweditor/x;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus opcode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lb/b/c/b/m;->Z:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_1
    sget-object v0, Lb/b/c/b/m;->aa:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_2
    sget-object v0, Lb/b/c/b/m;->X:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_3
    sget-object v0, Lb/b/c/b/m;->Y:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_4
    sget-object v0, Lb/b/c/b/m;->V:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_5
    sget-object v0, Lb/b/c/b/m;->W:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_6
    sget-object v0, Lb/b/c/b/m;->T:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_7
    sget-object v0, Lb/b/c/b/m;->U:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_8
    sget-object v0, Lb/b/c/b/m;->R:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_9
    sget-object v0, Lb/b/c/b/m;->S:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_a
    sget-object v0, Lb/b/c/b/m;->P:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    :pswitch_b
    sget-object v0, Lb/b/c/b/m;->Q:Lcom/gmail/heagoo/neweditor/x;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/x;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
