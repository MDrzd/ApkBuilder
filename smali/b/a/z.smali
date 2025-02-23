.class public final enum Lb/a/z;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/a/z;

.field public static final enum b:Lb/a/z;

.field public static final enum c:Lb/a/z;

.field public static final enum d:Lb/a/z;

.field private static enum e:Lb/a/z;

.field private static enum f:Lb/a/z;

.field private static enum g:Lb/a/z;

.field private static enum h:Lb/a/z;

.field private static enum i:Lb/a/z;

.field private static final synthetic k:[Lb/a/z;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_STATIC_PUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->a:Lb/a/z;

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_STATIC_GET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->b:Lb/a/z;

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_INSTANCE_PUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->c:Lb/a/z;

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_INSTANCE_GET"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->d:Lb/a/z;

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_STATIC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->e:Lb/a/z;

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_INSTANCE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->f:Lb/a/z;

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_DIRECT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->g:Lb/a/z;

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->h:Lb/a/z;

    new-instance v0, Lb/a/z;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_INTERFACE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lb/a/z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/z;->i:Lb/a/z;

    const/16 v0, 0x9

    new-array v0, v0, [Lb/a/z;

    sget-object v1, Lb/a/z;->a:Lb/a/z;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/z;->b:Lb/a/z;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/z;->c:Lb/a/z;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/z;->d:Lb/a/z;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/z;->e:Lb/a/z;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/z;->f:Lb/a/z;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/z;->g:Lb/a/z;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/z;->h:Lb/a/z;

    aput-object v1, v0, v9

    sget-object v1, Lb/a/z;->i:Lb/a/z;

    aput-object v1, v0, v10

    sput-object v0, Lb/a/z;->k:[Lb/a/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lb/a/z;->j:I

    return-void
.end method

.method static synthetic a(Lb/a/z;)I
    .registers 1

    iget p0, p0, Lb/a/z;->j:I

    return p0
.end method

.method static a(I)Lb/a/z;
    .registers 6

    invoke-static {}, Lb/a/z;->a()[Lb/a/z;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lb/a/z;->j:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()[Lb/a/z;
    .registers 1

    sget-object v0, Lb/a/z;->k:[Lb/a/z;

    invoke-virtual {v0}, [Lb/a/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/z;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .registers 3

    sget-object v0, Lb/a/y;->a:[I

    invoke-virtual {p0}, Lb/a/z;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
