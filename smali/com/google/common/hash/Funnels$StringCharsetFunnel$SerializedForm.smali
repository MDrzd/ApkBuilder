.class Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final charsetCanonicalName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;->charsetCanonicalName:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;->charsetCanonicalName:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/Funnels;->stringFunnel(Ljava/nio/charset/Charset;)Lcom/google/common/hash/Funnel;

    move-result-object v0

    return-object v0
.end method
