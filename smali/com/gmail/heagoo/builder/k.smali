.class final synthetic Lcom/gmail/heagoo/builder/k;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/gmail/heagoo/builder/l;->a()[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lcom/gmail/heagoo/builder/k;->a:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/gmail/heagoo/builder/k;->a:[I

    sget v3, Lcom/gmail/heagoo/builder/l;->a:I

    const/4 v3, 0x0

    aput v1, v2, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/gmail/heagoo/builder/k;->a:[I

    sget v3, Lcom/gmail/heagoo/builder/l;->b:I

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
