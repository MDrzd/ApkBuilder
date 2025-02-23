.class public final Lcom/gmail/heagoo/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/gmail/heagoo/b/a;->a(C)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v1}, Lcom/gmail/heagoo/b/a;->a(C)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_5

    if-ge v0, v1, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    if-ge p0, p1, :cond_6

    return v2

    :cond_6
    return v3

    :cond_7
    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    return v3
.end method

.method private static a(C)Z
    .registers 2

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/gmail/heagoo/common/c;

    check-cast p2, Lcom/gmail/heagoo/common/c;

    iget-boolean v0, p1, Lcom/gmail/heagoo/common/c;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/gmail/heagoo/common/c;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/gmail/heagoo/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    iget-boolean v0, p2, Lcom/gmail/heagoo/common/c;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method
