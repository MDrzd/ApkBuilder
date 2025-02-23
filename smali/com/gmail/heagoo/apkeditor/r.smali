.class final synthetic Lcom/gmail/heagoo/apkeditor/r;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/gmail/heagoo/apkeditor/ah;->a()[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lcom/gmail/heagoo/apkeditor/r;->a:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/gmail/heagoo/apkeditor/r;->a:[I

    sget v3, Lcom/gmail/heagoo/apkeditor/ah;->a:I

    const/4 v3, 0x0

    aput v1, v2, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/gmail/heagoo/apkeditor/r;->a:[I

    sget v4, Lcom/gmail/heagoo/apkeditor/ah;->b:I

    aput v2, v3, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/gmail/heagoo/apkeditor/r;->a:[I

    sget v3, Lcom/gmail/heagoo/apkeditor/ah;->c:I

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
