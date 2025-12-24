.class public Lcom/app/damnvulnerablebank/MainActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/MainActivity;->healthCheck(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/MainActivity;Landroid/widget/Button;)V
    .locals 0

    iput-object p2, p0, Lcom/app/damnvulnerablebank/MainActivity$c;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/b/u;)V
    .locals 1

    iget-object p1, p0, Lcom/app/damnvulnerablebank/MainActivity$c;->a:Landroid/widget/Button;

    const-string v0, "Api is Down"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/app/damnvulnerablebank/MainActivity$c;->a:Landroid/widget/Button;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
