.class public final enum Lc/a/a/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lc/a/a/m;

.field public static final enum b:Lc/a/a/m;

.field public static final enum c:Lc/a/a/m;

.field private static enum d:Lc/a/a/m;

.field private static enum e:Lc/a/a/m;

.field private static enum f:Lc/a/a/m;

.field private static enum g:Lc/a/a/m;

.field private static enum h:Lc/a/a/m;

.field private static enum i:Lc/a/a/m;

.field private static final synthetic j:[Lc/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lc/a/a/m;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->d:Lc/a/a/m;

    new-instance v0, Lc/a/a/m;

    const-string v1, "PUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->a:Lc/a/a/m;

    new-instance v0, Lc/a/a/m;

    const-string v1, "POST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->b:Lc/a/a/m;

    new-instance v0, Lc/a/a/m;

    const-string v1, "DELETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->e:Lc/a/a/m;

    new-instance v0, Lc/a/a/m;

    const-string v1, "HEAD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->c:Lc/a/a/m;

    new-instance v0, Lc/a/a/m;

    const-string v1, "OPTIONS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->f:Lc/a/a/m;

    new-instance v0, Lc/a/a/m;

    const-string v1, "TRACE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->g:Lc/a/a/m;

    new-instance v0, Lc/a/a/m;

    const-string v1, "CONNECT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->h:Lc/a/a/m;

    new-instance v0, Lc/a/a/m;

    const-string v1, "PATCH"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lc/a/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/m;->i:Lc/a/a/m;

    const/16 v0, 0x9

    new-array v0, v0, [Lc/a/a/m;

    sget-object v1, Lc/a/a/m;->d:Lc/a/a/m;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/m;->a:Lc/a/a/m;

    aput-object v1, v0, v3

    sget-object v1, Lc/a/a/m;->b:Lc/a/a/m;

    aput-object v1, v0, v4

    sget-object v1, Lc/a/a/m;->e:Lc/a/a/m;

    aput-object v1, v0, v5

    sget-object v1, Lc/a/a/m;->c:Lc/a/a/m;

    aput-object v1, v0, v6

    sget-object v1, Lc/a/a/m;->f:Lc/a/a/m;

    aput-object v1, v0, v7

    sget-object v1, Lc/a/a/m;->g:Lc/a/a/m;

    aput-object v1, v0, v8

    sget-object v1, Lc/a/a/m;->h:Lc/a/a/m;

    aput-object v1, v0, v9

    sget-object v1, Lc/a/a/m;->i:Lc/a/a/m;

    aput-object v1, v0, v10

    sput-object v0, Lc/a/a/m;->j:[Lc/a/a/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lc/a/a/m;
    .registers 6

    sget-object v0, Lc/a/a/m;->j:[Lc/a/a/m;

    invoke-virtual {v0}, [Lc/a/a/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lc/a/a/m;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
