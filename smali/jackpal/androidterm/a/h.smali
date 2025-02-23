.class final Ljackpal/androidterm/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljackpal/androidterm/a/h;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;IILjava/lang/String;)Z
    .registers 8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, p1

    const/4 v1, 0x0

    if-le v0, p2, :cond_0

    return v1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_2

    add-int v2, p1, p2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .registers 5

    const-string v0, "http:"

    invoke-static {p1, p2, p3, v0}, Ljackpal/androidterm/a/h;->a(Ljava/lang/CharSequence;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https:"

    invoke-static {p1, p2, p3, v0}, Ljackpal/androidterm/a/h;->a(Ljava/lang/CharSequence;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
