.class public final Lb/b/g/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = true

.field private static b:Lb/b/f/b/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;Ljava/util/EnumSet;)Lb/b/g/al;
    .registers 6

    const/4 p3, 0x1

    sput-boolean p3, Lb/b/g/y;->a:Z

    sput-object p4, Lb/b/g/y;->b:Lb/b/f/b/ad;

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    invoke-static {p0, p5}, Lb/b/g/y;->a(Lb/b/g/al;Ljava/util/EnumSet;)V

    invoke-static {p0}, Lb/b/g/a/g;->a(Lb/b/g/al;)Lcom/gmail/heagoo/pngeditor/m;

    return-object p0
.end method

.method public static a(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lcom/gmail/heagoo/pngeditor/j;
    .registers 7

    const-class v0, Lb/b/g/z;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-boolean p3, Lb/b/g/y;->a:Z

    sput-object p4, Lb/b/g/y;->b:Lb/b/f/b/ad;

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p3

    invoke-static {p3, v0}, Lb/b/g/y;->a(Lb/b/g/al;Ljava/util/EnumSet;)V

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lb/b/g/a/k;->a(Lb/b/g/al;Z)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p4

    invoke-virtual {p4}, Lb/b/f/b/c;->f()I

    move-result p4

    const/16 v1, 0x10

    if-le p4, v1, :cond_0

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lb/b/g/z;->d:Lb/b/g/z;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lb/b/g/y;->a(Lb/b/g/al;Ljava/util/EnumSet;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lb/b/g/a/k;->a(Lb/b/g/al;Z)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method private static a(Lb/b/g/al;Ljava/util/EnumSet;)V
    .registers 5

    sget-object v0, Lb/b/g/z;->a:Lb/b/g/z;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lb/b/g/u;->a(Lb/b/g/al;)V

    :cond_0
    sget-object v0, Lb/b/g/z;->b:Lb/b/g/z;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lb/b/g/ae;->a(Lb/b/g/al;)V

    invoke-static {p0}, Lb/b/g/e;->a(Lb/b/g/al;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lb/b/g/z;->c:Lb/b/g/z;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lb/b/g/r;->a(Lb/b/g/al;)V

    invoke-static {p0}, Lb/b/g/e;->a(Lb/b/g/al;)V

    const/4 v0, 0x0

    :cond_2
    sget-object v2, Lb/b/g/z;->e:Lb/b/g/z;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lb/b/g/z;->e:Lb/b/g/z;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lb/b/g/l;->a(Lb/b/g/al;)V

    invoke-static {p0}, Lb/b/g/e;->a(Lb/b/g/al;)V

    const/4 v0, 0x0

    :cond_3
    sget-object v2, Lb/b/g/z;->d:Lb/b/g/z;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lb/b/g/b;->a(Lb/b/g/al;)V

    invoke-static {p0}, Lb/b/g/e;->a(Lb/b/g/al;)V

    const/4 v0, 0x0

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p0}, Lb/b/g/e;->a(Lb/b/g/al;)V

    :cond_5
    invoke-static {p0}, Lb/b/g/ai;->a(Lb/b/g/al;)V

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lb/b/g/y;->a:Z

    return v0
.end method

.method public static b()Lb/b/f/b/ad;
    .registers 1

    sget-object v0, Lb/b/g/y;->b:Lb/b/f/b/ad;

    return-object v0
.end method

.method public static b(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lb/b/g/al;
    .registers 5

    const/4 p3, 0x1

    sput-boolean p3, Lb/b/g/y;->a:Z

    sput-object p4, Lb/b/g/y;->b:Lb/b/f/b/ad;

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->b(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lb/b/g/al;
    .registers 5

    const/4 p3, 0x1

    sput-boolean p3, Lb/b/g/y;->a:Z

    sput-object p4, Lb/b/g/y;->b:Lb/b/f/b/ad;

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->c(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lb/b/g/al;
    .registers 5

    const/4 p3, 0x1

    sput-boolean p3, Lb/b/g/y;->a:Z

    sput-object p4, Lb/b/g/y;->b:Lb/b/f/b/ad;

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lb/b/g/al;
    .registers 5

    const/4 p3, 0x1

    sput-boolean p3, Lb/b/g/y;->a:Z

    sput-object p4, Lb/b/g/y;->b:Lb/b/f/b/ad;

    invoke-static {p0, p1, p2}, Lb/b/g/ai;->a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;

    move-result-object p0

    invoke-static {p0}, Lb/b/g/e;->a(Lb/b/g/al;)V

    return-object p0
.end method
