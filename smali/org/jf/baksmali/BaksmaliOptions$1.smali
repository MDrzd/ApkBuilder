.class Lorg/jf/baksmali/BaksmaliOptions$1;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic this$0:Lorg/jf/baksmali/BaksmaliOptions;

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jf/baksmali/BaksmaliOptions;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/baksmali/BaksmaliOptions$1;->this$0:Lorg/jf/baksmali/BaksmaliOptions;

    iput-object p2, p0, Lorg/jf/baksmali/BaksmaliOptions$1;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8

    const-string p1, "public"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "type"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "name"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2e

    const/16 v0, 0x5f

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    const-string p3, "id"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "%s.%s.%s"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jf/baksmali/BaksmaliOptions$1;->val$prefix:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/jf/baksmali/BaksmaliOptions$1;->this$0:Lorg/jf/baksmali/BaksmaliOptions;

    iget-object p2, p2, Lorg/jf/baksmali/BaksmaliOptions;->resourceIds:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
