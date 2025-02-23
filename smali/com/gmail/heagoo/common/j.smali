.class public Lcom/gmail/heagoo/common/j;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const v0, -0xffd4ca

    iput v0, p0, Lcom/gmail/heagoo/common/j;->a:I

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v1, 0x0

    const v2, -0x2091d

    aput v2, v0, v1

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v1, 0x1

    const v2, -0x7a6700

    aput v2, v0, v1

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v1, 0x2

    const v2, -0x4a7700

    aput v2, v0, v1

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v1, 0x3

    const v2, -0xd55e68

    aput v2, v0, v1

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const v1, -0x6c5e5f

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v2, 0x5

    const v3, -0x34b4ea

    aput v3, v0, v2

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v2, 0x6

    const v3, -0xa7918b

    aput v3, v0, v2

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v2, 0x7

    const v3, -0x23cdd1

    aput v3, v0, v2

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/16 v2, 0x8

    const v3, -0xd9742e

    aput v3, v0, v2

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/16 v2, 0x9

    aput v1, v0, v2

    return-void
.end method

.method public static a()I
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gmail/heagoo/common/k;

    invoke-direct {v1}, Lcom/gmail/heagoo/common/k;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lcom/gmail/heagoo/neweditor/Token;)I
    .registers 3

    iget-byte p1, p1, Lcom/gmail/heagoo/neweditor/Token;->id:B

    packed-switch p1, :pswitch_data_0

    const/high16 p1, -0x1000000

    return p1

    :pswitch_0
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/16 v0, 0x9

    aget p1, p1, v0

    return p1

    :pswitch_1
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    return p1

    :pswitch_2
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v0, 0x3

    aget p1, p1, v0

    return p1

    :pswitch_3
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v0, 0x4

    aget p1, p1, v0

    return p1

    :pswitch_4
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1

    :pswitch_5
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v0, 0x7

    aget p1, p1, v0

    return p1

    :pswitch_6
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/16 v0, 0x8

    aget p1, p1, v0

    return p1

    :pswitch_7
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    return p1

    :pswitch_8
    iget-object p1, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v0, 0x6

    aget p1, p1, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/j;->a:I

    return v0
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/common/j;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
