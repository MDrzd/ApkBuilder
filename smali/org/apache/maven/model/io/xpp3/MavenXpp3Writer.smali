.class public Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;
.super Ljava/lang/Object;


# static fields
.field private static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private fileComment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->fileComment:Ljava/lang/String;

    return-void
.end method

.method private writeActivation(Lorg/apache/maven/model/Activation;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->isActiveByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "activeByDefault"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->isActiveByDefault()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "activeByDefault"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->getJdk()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "jdk"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->getJdk()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "jdk"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->getOs()Lorg/apache/maven/model/ActivationOS;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->getOs()Lorg/apache/maven/model/ActivationOS;

    move-result-object v0

    const-string v1, "os"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeActivationOS(Lorg/apache/maven/model/ActivationOS;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->getProperty()Lorg/apache/maven/model/ActivationProperty;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->getProperty()Lorg/apache/maven/model/ActivationProperty;

    move-result-object v0

    const-string v1, "property"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeActivationProperty(Lorg/apache/maven/model/ActivationProperty;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->getFile()Lorg/apache/maven/model/ActivationFile;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Activation;->getFile()Lorg/apache/maven/model/ActivationFile;

    move-result-object p1

    const-string v0, "file"

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeActivationFile(Lorg/apache/maven/model/ActivationFile;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_4
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeActivationFile(Lorg/apache/maven/model/ActivationFile;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationFile;->getMissing()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "missing"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationFile;->getMissing()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "missing"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationFile;->getExists()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "exists"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationFile;->getExists()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "exists"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeActivationOS(Lorg/apache/maven/model/ActivationOS;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationOS;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationOS;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationOS;->getFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "family"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationOS;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "family"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationOS;->getArch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "arch"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationOS;->getArch()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "arch"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationOS;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationOS;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeActivationProperty(Lorg/apache/maven/model/ActivationProperty;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationProperty;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "value"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ActivationProperty;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "value"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeBuild(Lorg/apache/maven/model/Build;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getSourceDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "sourceDirectory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getSourceDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "sourceDirectory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getScriptSourceDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "scriptSourceDirectory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getScriptSourceDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "scriptSourceDirectory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestSourceDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "testSourceDirectory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestSourceDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "testSourceDirectory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getOutputDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "outputDirectory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getOutputDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "outputDirectory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestOutputDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "testOutputDirectory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestOutputDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "testOutputDirectory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getExtensions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "extensions"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Extension;

    const-string v2, "extension"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeExtension(Lorg/apache/maven/model/Extension;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "extensions"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_6
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getDefaultGoal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "defaultGoal"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getDefaultGoal()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "defaultGoal"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_7
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "resources"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Resource;

    const-string v2, "resource"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeResource(Lorg/apache/maven/model/Resource;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "resources"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_9
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "testResources"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getTestResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Resource;

    const-string v2, "testResource"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeResource(Lorg/apache/maven/model/Resource;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_2

    :cond_a
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "testResources"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_b
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "directory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "directory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_c
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getFinalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "finalName"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getFinalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "finalName"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_d
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getFilters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "filters"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "filter"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "filter"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_3

    :cond_e
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "filters"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_f
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getPluginManagement()Lorg/apache/maven/model/PluginManagement;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getPluginManagement()Lorg/apache/maven/model/PluginManagement;

    move-result-object v0

    const-string v1, "pluginManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePluginManagement(Lorg/apache/maven/model/PluginManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_10
    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getPlugins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "plugins"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Build;->getPlugins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Plugin;

    const-string v1, "plugin"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePlugin(Lorg/apache/maven/model/Plugin;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_4

    :cond_11
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "plugins"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_12
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeBuildBase(Lorg/apache/maven/model/BuildBase;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getDefaultGoal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "defaultGoal"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getDefaultGoal()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "defaultGoal"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "resources"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Resource;

    const-string v2, "resource"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeResource(Lorg/apache/maven/model/Resource;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "resources"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getTestResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getTestResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "testResources"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getTestResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Resource;

    const-string v2, "testResource"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeResource(Lorg/apache/maven/model/Resource;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "testResources"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "directory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "directory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getFinalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "finalName"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getFinalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "finalName"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_6
    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getFilters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "filters"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "filter"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "filter"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_2

    :cond_7
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "filters"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_8
    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getPluginManagement()Lorg/apache/maven/model/PluginManagement;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getPluginManagement()Lorg/apache/maven/model/PluginManagement;

    move-result-object v0

    const-string v1, "pluginManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePluginManagement(Lorg/apache/maven/model/PluginManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_9
    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getPlugins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "plugins"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/BuildBase;->getPlugins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Plugin;

    const-string v1, "plugin"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePlugin(Lorg/apache/maven/model/Plugin;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_3

    :cond_a
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "plugins"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_b
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeCiManagement(Lorg/apache/maven/model/CiManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getSystem()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "system"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getSystem()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "system"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getNotifiers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getNotifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "notifiers"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/CiManagement;->getNotifiers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Notifier;

    const-string v1, "notifier"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeNotifier(Lorg/apache/maven/model/Notifier;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "notifiers"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeConfigurationContainer(Lorg/apache/maven/model/ConfigurationContainer;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ConfigurationContainer;->getInherited()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "inherited"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ConfigurationContainer;->getInherited()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "inherited"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/ConfigurationContainer;->getConfiguration()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/ConfigurationContainer;->getConfiguration()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeContributor(Lorg/apache/maven/model/Contributor;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "email"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getOrganization()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "organization"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getOrganization()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "organization"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getOrganizationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "organizationUrl"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getOrganizationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "organizationUrl"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getRoles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "roles"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "role"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "role"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "roles"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_6
    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getTimezone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "timezone"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "timezone"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_7
    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "properties"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/maven/model/Contributor;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_1

    :cond_8
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "properties"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_9
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeDependency(Lorg/apache/maven/model/Dependency;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "groupId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "artifactId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "artifactId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getClassifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "classifier"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getClassifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "classifier"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getScope()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "scope"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "scope"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getSystemPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "systemPath"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getSystemPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "systemPath"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_6
    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getExclusions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getExclusions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "exclusions"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getExclusions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Exclusion;

    const-string v2, "exclusion"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeExclusion(Lorg/apache/maven/model/Exclusion;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "exclusions"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_8
    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getOptional()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "optional"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Dependency;->getOptional()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "optional"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_9
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeDependencyManagement(Lorg/apache/maven/model/DependencyManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/DependencyManagement;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/DependencyManagement;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/DependencyManagement;->getDependencies()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Dependency;

    const-string v1, "dependency"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDependency(Lorg/apache/maven/model/Dependency;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "dependencies"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeDeploymentRepository(Lorg/apache/maven/model/DeploymentRepository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->isUniqueVersion()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "uniqueVersion"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->isUniqueVersion()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "uniqueVersion"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getReleases()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getReleases()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    const-string v1, "releases"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepositoryPolicy(Lorg/apache/maven/model/RepositoryPolicy;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getSnapshots()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getSnapshots()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    const-string v1, "snapshots"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepositoryPolicy(Lorg/apache/maven/model/RepositoryPolicy;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "layout"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/DeploymentRepository;->getLayout()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "layout"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_6
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeDeveloper(Lorg/apache/maven/model/Developer;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "email"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getOrganization()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "organization"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getOrganization()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "organization"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getOrganizationUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "organizationUrl"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getOrganizationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "organizationUrl"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getRoles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "roles"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "role"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "role"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "roles"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_7
    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getTimezone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "timezone"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "timezone"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_8
    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_a

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "properties"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/maven/model/Developer;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_1

    :cond_9
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "properties"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_a
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeDistributionManagement(Lorg/apache/maven/model/DistributionManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getRepository()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getRepository()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v0

    const-string v1, "repository"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDeploymentRepository(Lorg/apache/maven/model/DeploymentRepository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getSnapshotRepository()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getSnapshotRepository()Lorg/apache/maven/model/DeploymentRepository;

    move-result-object v0

    const-string v1, "snapshotRepository"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDeploymentRepository(Lorg/apache/maven/model/DeploymentRepository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getSite()Lorg/apache/maven/model/Site;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getSite()Lorg/apache/maven/model/Site;

    move-result-object v0

    const-string v1, "site"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeSite(Lorg/apache/maven/model/Site;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "downloadUrl"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "downloadUrl"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getRelocation()Lorg/apache/maven/model/Relocation;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getRelocation()Lorg/apache/maven/model/Relocation;

    move-result-object v0

    const-string v1, "relocation"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRelocation(Lorg/apache/maven/model/Relocation;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "status"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/DistributionManagement;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "status"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeExclusion(Lorg/apache/maven/model/Exclusion;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Exclusion;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "artifactId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Exclusion;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "artifactId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Exclusion;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Exclusion;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeExtension(Lorg/apache/maven/model/Extension;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "groupId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "artifactId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "artifactId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Extension;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeFileSet(Lorg/apache/maven/model/FileSet;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "directory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "directory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getIncludes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getIncludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "includes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getIncludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "include"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "include"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "includes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getExcludes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getExcludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "excludes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/FileSet;->getExcludes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "exclude"

    invoke-interface {p3, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "exclude"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "excludes"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeIssueManagement(Lorg/apache/maven/model/IssueManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/IssueManagement;->getSystem()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "system"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/IssueManagement;->getSystem()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "system"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/IssueManagement;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/IssueManagement;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeLicense(Lorg/apache/maven/model/License;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getDistribution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "distribution"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getDistribution()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "distribution"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getComments()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "comments"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/License;->getComments()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "comments"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeMailingList(Lorg/apache/maven/model/MailingList;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getSubscribe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "subscribe"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getSubscribe()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "subscribe"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getUnsubscribe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "unsubscribe"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getUnsubscribe()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "unsubscribe"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getPost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "post"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getPost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "post"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getArchive()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "archive"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getArchive()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "archive"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getOtherArchives()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getOtherArchives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "otherArchives"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/MailingList;->getOtherArchives()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "otherArchive"

    invoke-interface {p3, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "otherArchive"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_5
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "otherArchives"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_6
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeModel(Lorg/apache/maven/model/Model;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 9

    iget-object v0, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->fileComment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->fileComment:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->comment(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    const-string v1, "http://maven.apache.org/POM/4.0.0"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xsi"

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    const-string v0, ""

    const-string v1, "xsi:schemaLocation"

    const-string v2, "http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd"

    invoke-interface {p3, v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getModelVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "modelVersion"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getModelVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "modelVersion"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getParent()Lorg/apache/maven/model/Parent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getParent()Lorg/apache/maven/model/Parent;

    move-result-object v0

    const-string v1, "parent"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeParent(Lorg/apache/maven/model/Parent;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "groupId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "artifactId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "artifactId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPackaging()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPackaging()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "packaging"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPackaging()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "packaging"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_6
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_7
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "description"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "description"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_8
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_9
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getInceptionYear()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "inceptionYear"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getInceptionYear()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "inceptionYear"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_a
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getOrganization()Lorg/apache/maven/model/Organization;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getOrganization()Lorg/apache/maven/model/Organization;

    move-result-object v0

    const-string v1, "organization"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeOrganization(Lorg/apache/maven/model/Organization;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_b
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getLicenses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getLicenses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "licenses"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getLicenses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/License;

    const-string v2, "license"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeLicense(Lorg/apache/maven/model/License;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_c
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "licenses"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_d
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDevelopers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDevelopers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "developers"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDevelopers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Developer;

    const-string v2, "developer"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDeveloper(Lorg/apache/maven/model/Developer;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_1

    :cond_e
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "developers"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_f
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getContributors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getContributors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "contributors"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getContributors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Contributor;

    const-string v2, "contributor"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeContributor(Lorg/apache/maven/model/Contributor;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_2

    :cond_10
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "contributors"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_11
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getMailingLists()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getMailingLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "mailingLists"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getMailingLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/MailingList;

    const-string v2, "mailingList"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeMailingList(Lorg/apache/maven/model/MailingList;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_3

    :cond_12
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "mailingLists"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_13
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPrerequisites()Lorg/apache/maven/model/Prerequisites;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPrerequisites()Lorg/apache/maven/model/Prerequisites;

    move-result-object v0

    const-string v1, "prerequisites"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePrerequisites(Lorg/apache/maven/model/Prerequisites;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_14
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getModules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "modules"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "module"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "module"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_4

    :cond_15
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "modules"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_16
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getScm()Lorg/apache/maven/model/Scm;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getScm()Lorg/apache/maven/model/Scm;

    move-result-object v0

    const-string v1, "scm"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeScm(Lorg/apache/maven/model/Scm;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_17
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getIssueManagement()Lorg/apache/maven/model/IssueManagement;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getIssueManagement()Lorg/apache/maven/model/IssueManagement;

    move-result-object v0

    const-string v1, "issueManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeIssueManagement(Lorg/apache/maven/model/IssueManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_18
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getCiManagement()Lorg/apache/maven/model/CiManagement;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getCiManagement()Lorg/apache/maven/model/CiManagement;

    move-result-object v0

    const-string v1, "ciManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeCiManagement(Lorg/apache/maven/model/CiManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_19
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v0

    const-string v1, "distributionManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDistributionManagement(Lorg/apache/maven/model/DistributionManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_1a
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_1c

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "properties"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_5

    :cond_1b
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "properties"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1c
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;

    move-result-object v0

    const-string v1, "dependencyManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDependencyManagement(Lorg/apache/maven/model/DependencyManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_1d
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Dependency;

    const-string v2, "dependency"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDependency(Lorg/apache/maven/model/Dependency;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_6

    :cond_1e
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1f
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getRepositories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "repositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Repository;

    const-string v2, "repository"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepository(Lorg/apache/maven/model/Repository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_7

    :cond_20
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "repositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_21
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "pluginRepositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Repository;

    const-string v2, "pluginRepository"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepository(Lorg/apache/maven/model/Repository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_8

    :cond_22
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "pluginRepositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_23
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getBuild()Lorg/apache/maven/model/Build;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getBuild()Lorg/apache/maven/model/Build;

    move-result-object v0

    const-string v1, "build"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeBuild(Lorg/apache/maven/model/Build;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_24
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getReports()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getReports()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_25
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getReporting()Lorg/apache/maven/model/Reporting;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getReporting()Lorg/apache/maven/model/Reporting;

    move-result-object v0

    const-string v1, "reporting"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeReporting(Lorg/apache/maven/model/Reporting;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_26
    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getProfiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "profiles"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Model;->getProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Profile;

    const-string v1, "profile"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeProfile(Lorg/apache/maven/model/Profile;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_9

    :cond_27
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "profiles"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_28
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeModelBase(Lorg/apache/maven/model/ModelBase;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getModules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "modules"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "module"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "module"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "modules"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v0

    const-string v1, "distributionManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDistributionManagement(Lorg/apache/maven/model/DistributionManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "properties"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "properties"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;

    move-result-object v0

    const-string v1, "dependencyManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDependencyManagement(Lorg/apache/maven/model/DependencyManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Dependency;

    const-string v2, "dependency"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDependency(Lorg/apache/maven/model/Dependency;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_7
    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getRepositories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "repositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Repository;

    const-string v2, "repository"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepository(Lorg/apache/maven/model/Repository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_3

    :cond_8
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "repositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_9
    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "pluginRepositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Repository;

    const-string v2, "pluginRepository"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepository(Lorg/apache/maven/model/Repository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_4

    :cond_a
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "pluginRepositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_b
    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getReports()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getReports()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_c
    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getReporting()Lorg/apache/maven/model/Reporting;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/apache/maven/model/ModelBase;->getReporting()Lorg/apache/maven/model/Reporting;

    move-result-object p1

    const-string v0, "reporting"

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeReporting(Lorg/apache/maven/model/Reporting;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_d
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeNotifier(Lorg/apache/maven/model/Notifier;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->isSendOnError()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "sendOnError"

    invoke-interface {p3, v0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->isSendOnError()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "sendOnError"

    invoke-interface {v0, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->isSendOnFailure()Z

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "sendOnFailure"

    invoke-interface {p3, v0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->isSendOnFailure()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "sendOnFailure"

    invoke-interface {v0, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->isSendOnSuccess()Z

    move-result v0

    if-eq v0, v1, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "sendOnSuccess"

    invoke-interface {p3, v0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->isSendOnSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "sendOnSuccess"

    invoke-interface {v0, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->isSendOnWarning()Z

    move-result v0

    if-eq v0, v1, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "sendOnWarning"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->isSendOnWarning()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "sendOnWarning"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "address"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "address"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "configuration"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/maven/model/Notifier;->getConfiguration()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_6
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "configuration"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_7
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeOrganization(Lorg/apache/maven/model/Organization;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Organization;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Organization;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Organization;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Organization;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeParent(Lorg/apache/maven/model/Parent;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "groupId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "artifactId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "artifactId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getRelativePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "../pom.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "relativePath"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Parent;->getRelativePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "relativePath"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writePatternSet(Lorg/apache/maven/model/PatternSet;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PatternSet;->getIncludes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/PatternSet;->getIncludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "includes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PatternSet;->getIncludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "include"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "include"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "includes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/PatternSet;->getExcludes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/maven/model/PatternSet;->getExcludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "excludes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PatternSet;->getExcludes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "exclude"

    invoke-interface {p3, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "exclude"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "excludes"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writePlugin(Lorg/apache/maven/model/Plugin;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.maven.plugins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "groupId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "artifactId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "artifactId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getExtensions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "extensions"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getExtensions()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "extensions"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "executions"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getExecutions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/PluginExecution;

    const-string v2, "execution"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePluginExecution(Lorg/apache/maven/model/PluginExecution;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "executions"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Dependency;

    const-string v2, "dependency"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDependency(Lorg/apache/maven/model/Dependency;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_7
    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getGoals()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getGoals()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_8
    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getInherited()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "inherited"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getInherited()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "inherited"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_9
    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getConfiguration()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/apache/maven/model/Plugin;->getConfiguration()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_a
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writePluginConfiguration(Lorg/apache/maven/model/PluginConfiguration;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginConfiguration;->getPluginManagement()Lorg/apache/maven/model/PluginManagement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginConfiguration;->getPluginManagement()Lorg/apache/maven/model/PluginManagement;

    move-result-object v0

    const-string v1, "pluginManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePluginManagement(Lorg/apache/maven/model/PluginManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/PluginConfiguration;->getPlugins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginConfiguration;->getPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "plugins"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginConfiguration;->getPlugins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Plugin;

    const-string v1, "plugin"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePlugin(Lorg/apache/maven/model/Plugin;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "plugins"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writePluginContainer(Lorg/apache/maven/model/PluginContainer;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginContainer;->getPlugins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginContainer;->getPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "plugins"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginContainer;->getPlugins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Plugin;

    const-string v1, "plugin"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePlugin(Lorg/apache/maven/model/Plugin;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "plugins"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writePluginExecution(Lorg/apache/maven/model/PluginExecution;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getPhase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "phase"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getPhase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "phase"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getGoals()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getGoals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "goals"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getGoals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "goal"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "goal"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "goals"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getInherited()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "inherited"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getInherited()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "inherited"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getConfiguration()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginExecution;->getConfiguration()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_5
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writePluginManagement(Lorg/apache/maven/model/PluginManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginManagement;->getPlugins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginManagement;->getPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "plugins"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/PluginManagement;->getPlugins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/Plugin;

    const-string v1, "plugin"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writePlugin(Lorg/apache/maven/model/Plugin;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "plugins"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writePrerequisites(Lorg/apache/maven/model/Prerequisites;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Prerequisites;->getMaven()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Prerequisites;->getMaven()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "maven"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Prerequisites;->getMaven()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "maven"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeProfile(Lorg/apache/maven/model/Profile;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 9

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getActivation()Lorg/apache/maven/model/Activation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getActivation()Lorg/apache/maven/model/Activation;

    move-result-object v0

    const-string v1, "activation"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeActivation(Lorg/apache/maven/model/Activation;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getBuild()Lorg/apache/maven/model/BuildBase;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getBuild()Lorg/apache/maven/model/BuildBase;

    move-result-object v0

    const-string v1, "build"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeBuildBase(Lorg/apache/maven/model/BuildBase;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getModules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "modules"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "module"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "module"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "modules"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getDistributionManagement()Lorg/apache/maven/model/DistributionManagement;

    move-result-object v0

    const-string v1, "distributionManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDistributionManagement(Lorg/apache/maven/model/DistributionManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "properties"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    sget-object v3, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_1

    :cond_6
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "properties"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_7
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getDependencyManagement()Lorg/apache/maven/model/DependencyManagement;

    move-result-object v0

    const-string v1, "dependencyManagement"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDependencyManagement(Lorg/apache/maven/model/DependencyManagement;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_8
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Dependency;

    const-string v2, "dependency"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeDependency(Lorg/apache/maven/model/Dependency;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_2

    :cond_9
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "dependencies"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_a
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getRepositories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "repositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Repository;

    const-string v2, "repository"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepository(Lorg/apache/maven/model/Repository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_3

    :cond_b
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "repositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_c
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "pluginRepositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getPluginRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/Repository;

    const-string v2, "pluginRepository"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepository(Lorg/apache/maven/model/Repository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_4

    :cond_d
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "pluginRepositories"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_e
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getReports()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getReports()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_f
    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getReporting()Lorg/apache/maven/model/Reporting;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lorg/apache/maven/model/Profile;->getReporting()Lorg/apache/maven/model/Reporting;

    move-result-object p1

    const-string v0, "reporting"

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeReporting(Lorg/apache/maven/model/Reporting;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_10
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeRelocation(Lorg/apache/maven/model/Relocation;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "groupId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "artifactId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "artifactId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "message"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Relocation;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "message"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeReportPlugin(Lorg/apache/maven/model/ReportPlugin;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.maven.plugins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "groupId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "groupId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "artifactId"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getArtifactId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "artifactId"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "version"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "version"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "reportSets"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getReportSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/maven/model/ReportSet;

    const-string v2, "reportSet"

    invoke-direct {p0, v1, v2, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeReportSet(Lorg/apache/maven/model/ReportSet;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "reportSets"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getInherited()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "inherited"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getInherited()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "inherited"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getConfiguration()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportPlugin;->getConfiguration()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_6
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeReportSet(Lorg/apache/maven/model/ReportSet;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getReports()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getReports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "reports"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getReports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "report"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "report"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "reports"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getInherited()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "inherited"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getInherited()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "inherited"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getConfiguration()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/ReportSet;->getConfiguration()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/codehaus/plexus/util/xml/Xpp3Dom;

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lorg/codehaus/plexus/util/xml/Xpp3Dom;->writeToSerializer(Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_4
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeReporting(Lorg/apache/maven/model/Reporting;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getExcludeDefaults()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "excludeDefaults"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getExcludeDefaults()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "excludeDefaults"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getOutputDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "outputDirectory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getOutputDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "outputDirectory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getPlugins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "plugins"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Reporting;->getPlugins()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/maven/model/ReportPlugin;

    const-string v1, "plugin"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeReportPlugin(Lorg/apache/maven/model/ReportPlugin;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "plugins"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeRepository(Lorg/apache/maven/model/Repository;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getReleases()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getReleases()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    const-string v1, "releases"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepositoryPolicy(Lorg/apache/maven/model/RepositoryPolicy;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getSnapshots()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getSnapshots()Lorg/apache/maven/model/RepositoryPolicy;

    move-result-object v0

    const-string v1, "snapshots"

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeRepositoryPolicy(Lorg/apache/maven/model/RepositoryPolicy;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "layout"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Repository;->getLayout()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "layout"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_5
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeRepositoryBase(Lorg/apache/maven/model/RepositoryBase;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getLayout()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "layout"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryBase;->getLayout()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "layout"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeRepositoryPolicy(Lorg/apache/maven/model/RepositoryPolicy;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getEnabled()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "enabled"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "enabled"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getUpdatePolicy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "updatePolicy"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getUpdatePolicy()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "updatePolicy"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getChecksumPolicy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "checksumPolicy"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/RepositoryPolicy;->getChecksumPolicy()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "checksumPolicy"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeResource(Lorg/apache/maven/model/Resource;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 8

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getTargetPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "targetPath"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "targetPath"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getFiltering()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "filtering"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getFiltering()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "filtering"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "directory"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "directory"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getIncludes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getIncludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "includes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getIncludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "include"

    invoke-interface {p3, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    sget-object v2, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v3, "include"

    invoke-interface {v1, v2, v3}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "includes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_4
    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getExcludes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getExcludes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "excludes"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Resource;->getExcludes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "exclude"

    invoke-interface {p3, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "exclude"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    goto :goto_1

    :cond_5
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v0, "excludes"

    invoke-interface {p3, p1, v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_6
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeScm(Lorg/apache/maven/model/Scm;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getConnection()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "connection"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getConnection()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "connection"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getDeveloperConnection()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "developerConnection"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getDeveloperConnection()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "developerConnection"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "tag"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "tag"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Scm;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_3
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method

.method private writeSite(Lorg/apache/maven/model/Site;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V
    .registers 7

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, v0, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_1
    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p3, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/maven/model/Site;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->text(Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    move-result-object p1

    sget-object v0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p1, v0, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    :cond_2
    sget-object p1, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;

    return-void
.end method


# virtual methods
.method public setFileComment(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->fileComment:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/OutputStream;Lorg/apache/maven/model/Model;)V
    .registers 6

    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;-><init>()V

    const-string v1, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    const-string v2, "  "

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    const-string v2, "\n"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getModelEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getModelEncoding()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "project"

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeModel(Lorg/apache/maven/model/Model;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    invoke-interface {v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endDocument()V

    return-void
.end method

.method public write(Ljava/io/Writer;Lorg/apache/maven/model/Model;)V
    .registers 6

    new-instance v0, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;

    invoke-direct {v0}, Lorg/codehaus/plexus/util/xml/pull/MXSerializer;-><init>()V

    const-string v1, "http://xmlpull.org/v1/doc/properties.html#serializer-indentation"

    const-string v2, "  "

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http://xmlpull.org/v1/doc/properties.html#serializer-line-separator"

    const-string v2, "\n"

    invoke-interface {v0, v1, v2}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    invoke-virtual {p2}, Lorg/apache/maven/model/Model;->getModelEncoding()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "project"

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/maven/model/io/xpp3/MavenXpp3Writer;->writeModel(Lorg/apache/maven/model/Model;Ljava/lang/String;Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;)V

    invoke-interface {v0}, Lorg/codehaus/plexus/util/xml/pull/XmlSerializer;->endDocument()V

    return-void
.end method
