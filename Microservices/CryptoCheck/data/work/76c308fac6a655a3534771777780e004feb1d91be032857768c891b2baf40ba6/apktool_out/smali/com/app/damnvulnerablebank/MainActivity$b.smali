.class public Lcom/app/damnvulnerablebank/MainActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/MainActivity;->healthCheck(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/b/q$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/MainActivity;Landroid/widget/Button;)V
    .locals 0

    iput-object p2, p0, Lcom/app/damnvulnerablebank/MainActivity$b;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object p1, p0, Lcom/app/damnvulnerablebank/MainActivity$b;->a:Landroid/widget/Button;

    const-string v0, "Api is Up"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/app/damnvulnerablebank/MainActivity$b;->a:Landroid/widget/Button;

    const v0, -0xff0100

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
