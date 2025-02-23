.class final synthetic Lb/b/c/c/at;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lb/b/c/c/au;->a()[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lb/b/c/c/at;->a:[I

    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_0
    sget-object v2, Lb/b/c/c/at;->a:[I

    sget v3, Lb/b/c/c/au;->c:I

    aput v0, v2, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lb/b/c/c/at;->a:[I

    sget v3, Lb/b/c/c/au;->b:I

    aput v1, v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
