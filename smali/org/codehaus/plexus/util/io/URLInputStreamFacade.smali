.class public Lorg/codehaus/plexus/util/io/URLInputStreamFacade;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/io/InputStreamFacade;


# instance fields
.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/io/URLInputStreamFacade;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/io/URLInputStreamFacade;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
