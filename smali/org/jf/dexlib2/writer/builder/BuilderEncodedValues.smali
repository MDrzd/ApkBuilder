.class public abstract Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultValueForType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lorg/jf/util/ExceptionWithContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "Unrecognized type: %s"

    invoke-direct {v1, p0, v2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :sswitch_0
    sget-object p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;->FALSE_VALUE:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;-><init>(S)V

    return-object p0

    :sswitch_2
    sget-object p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;->INSTANCE:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;

    return-object p0

    :sswitch_3
    new-instance p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;-><init>(J)V

    return-object p0

    :sswitch_4
    new-instance p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;-><init>(I)V

    return-object p0

    :sswitch_5
    new-instance p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;-><init>(F)V

    return-object p0

    :sswitch_6
    new-instance p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;-><init>(D)V

    return-object p0

    :sswitch_7
    new-instance p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;-><init>(C)V

    return-object p0

    :sswitch_8
    new-instance p0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;-><init>(B)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4c -> :sswitch_2
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5b -> :sswitch_2
    .end sparse-switch
.end method
