.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
.super Ljava/lang/Object;


# instance fields
.field private final mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;


# direct methods
.method public constructor <init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    return-void
.end method


# virtual methods
.method public final getCryptoObject()Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    return-object v0
.end method
