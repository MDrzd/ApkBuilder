.class public final Lcom/gmail/heagoo/common/q;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/q;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 7

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/gmail/heagoo/common/q;->b:I

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/gmail/heagoo/common/q;->a:I

    iget v0, p0, Lcom/gmail/heagoo/common/q;->a:I

    const/16 v1, 0x20

    div-int/2addr v0, v1

    iget v2, p0, Lcom/gmail/heagoo/common/q;->b:I

    div-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    iput p3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v1, v1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/q;->b:I

    return v0
.end method
