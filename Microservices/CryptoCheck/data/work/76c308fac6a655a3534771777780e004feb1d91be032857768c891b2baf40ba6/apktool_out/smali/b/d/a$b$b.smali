.class public Lb/d/a$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a$b;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/biometric/BiometricPrompt$c;

.field public final synthetic c:Lb/d/a$b;


# direct methods
.method public constructor <init>(Lb/d/a$b;Landroidx/biometric/BiometricPrompt$c;)V
    .locals 0

    iput-object p1, p0, Lb/d/a$b$b;->c:Lb/d/a$b;

    iput-object p2, p0, Lb/d/a$b$b;->b:Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/d/a$b$b;->c:Lb/d/a$b;

    iget-object v0, v0, Lb/d/a$b;->a:Lb/d/a;

    iget-object v0, v0, Lb/d/a;->a0:Landroidx/biometric/BiometricPrompt$b;

    iget-object v1, p0, Lb/d/a$b$b;->b:Landroidx/biometric/BiometricPrompt$c;

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$b;->a(Landroidx/biometric/BiometricPrompt$c;)V

    return-void
.end method
