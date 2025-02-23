.class public Lorg/codehaus/plexus/util/xml/CompactXMLWriter;
.super Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/plexus/util/xml/PrettyPrintXMLWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method protected endOfLine()V
    .registers 1

    return-void
.end method
