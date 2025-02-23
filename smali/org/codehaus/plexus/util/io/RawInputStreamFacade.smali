.class public Lorg/codehaus/plexus/util/io/RawInputStreamFacade;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/plexus/util/io/InputStreamFacade;


# instance fields
.field final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/io/RawInputStreamFacade;->stream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/plexus/util/io/RawInputStreamFacade;->stream:Ljava/io/InputStream;

    return-object v0
.end method
