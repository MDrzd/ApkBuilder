.class public final Lcom/gmail/heagoo/neweditor/ai;
.super Ljava/lang/Object;


# static fields
.field private static final f:Ljava/util/Map;


# instance fields
.field public a:Lcom/gmail/heagoo/neweditor/ai;

.field public b:Lcom/gmail/heagoo/common/p;

.field public c:Lcom/gmail/heagoo/neweditor/v;

.field public d:[C

.field public e:Lcom/gmail/heagoo/common/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gmail/heagoo/neweditor/ai;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/gmail/heagoo/neweditor/v;Lcom/gmail/heagoo/neweditor/ai;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/gmail/heagoo/neweditor/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/neweditor/ai;

    :goto_0
    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->i()Lcom/gmail/heagoo/common/p;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    return-void

    :cond_1
    iget-object p1, p2, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/gmail/heagoo/neweditor/ai;
    .registers 2

    sget-object v0, Lcom/gmail/heagoo/neweditor/ai;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/neweditor/ai;

    if-nez v0, :cond_0

    sget-object v0, Lcom/gmail/heagoo/neweditor/ai;->f:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/gmail/heagoo/common/p;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/gmail/heagoo/common/p;->e:Lcom/gmail/heagoo/common/p;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/gmail/heagoo/common/p;->e:Lcom/gmail/heagoo/common/p;

    :goto_0
    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {p1}, Lcom/gmail/heagoo/neweditor/v;->i()Lcom/gmail/heagoo/common/p;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/gmail/heagoo/neweditor/ai;

    invoke-direct {v0}, Lcom/gmail/heagoo/neweditor/ai;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ai;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/neweditor/ai;

    :goto_0
    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ai;->e:Lcom/gmail/heagoo/common/p;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lcom/gmail/heagoo/neweditor/ai;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Lcom/gmail/heagoo/neweditor/ai;

    iget-object v0, p1, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-ne v0, v2, :cond_6

    iget-object v0, p1, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    iget-object v2, p1, Lcom/gmail/heagoo/neweditor/ai;->a:Lcom/gmail/heagoo/neweditor/ai;

    invoke-static {v0, v2}, Lcom/gmail/heagoo/neweditor/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/ai;->d:[C

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    array-length v3, v0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-char v4, v0, v3

    aget-char v5, p1, v3

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ai;->b:Lcom/gmail/heagoo/common/p;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ai;->c:Lcom/gmail/heagoo/neweditor/v;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
