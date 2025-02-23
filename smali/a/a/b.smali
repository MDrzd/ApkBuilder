.class final synthetic La/a/b;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, La/a/c;->a()[I

    const/4 v0, 0x6

    new-array v1, v0, [I

    sput-object v1, La/a/b;->a:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, La/a/b;->a:[I

    sget v3, La/a/c;->a:I

    const/4 v3, 0x0

    aput v1, v2, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, La/a/b;->a:[I

    sget v4, La/a/c;->b:I

    aput v2, v3, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    :try_start_2
    sget-object v3, La/a/b;->a:[I

    sget v4, La/a/c;->c:I

    aput v1, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x4

    :try_start_3
    sget-object v3, La/a/b;->a:[I

    sget v4, La/a/c;->d:I

    aput v2, v3, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v1, 0x5

    :try_start_4
    sget-object v3, La/a/b;->a:[I

    sget v4, La/a/c;->e:I

    aput v1, v3, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, La/a/b;->a:[I

    sget v3, La/a/c;->f:I

    aput v0, v2, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
