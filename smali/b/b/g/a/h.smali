.class final synthetic Lb/b/g/a/h;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lb/b/g/a/i;->a()[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lb/b/g/a/h;->a:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lb/b/g/a/h;->a:[I

    sget v2, Lb/b/g/a/i;->a:I

    const/4 v2, 0x0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lb/b/g/a/h;->a:[I

    sget v3, Lb/b/g/a/i;->b:I

    aput v1, v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lb/b/g/a/h;->a:[I

    sget v2, Lb/b/g/a/i;->c:I

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
