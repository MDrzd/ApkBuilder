.class final synthetic Lb/a/y;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lb/a/z;->a()[Lb/a/z;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lb/a/y;->a:[I

    :try_start_0
    sget-object v0, Lb/a/y;->a:[I

    sget-object v1, Lb/a/z;->a:Lb/a/z;

    invoke-virtual {v1}, Lb/a/z;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lb/a/y;->a:[I

    sget-object v1, Lb/a/z;->b:Lb/a/z;

    invoke-virtual {v1}, Lb/a/z;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lb/a/y;->a:[I

    sget-object v1, Lb/a/z;->c:Lb/a/z;

    invoke-virtual {v1}, Lb/a/z;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lb/a/y;->a:[I

    sget-object v1, Lb/a/z;->d:Lb/a/z;

    invoke-virtual {v1}, Lb/a/z;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
