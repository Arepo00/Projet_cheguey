.class public Lcom/app/damnvulnerablebank/SplashScreen;
.super Lb/b/k/h;
.source ""


# instance fields
.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/view/animation/Animation;

.field public s:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lb/b/k/h;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d006f

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    const p1, 0x7f0a0059

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/SplashScreen;->p:Landroid/widget/ImageView;

    const p1, 0x7f0a0138

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/damnvulnerablebank/SplashScreen;->q:Landroid/widget/TextView;

    const p1, 0x7f010020

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/app/damnvulnerablebank/SplashScreen;->r:Landroid/view/animation/Animation;

    const p1, 0x7f01000c

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/app/damnvulnerablebank/SplashScreen;->s:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/app/damnvulnerablebank/SplashScreen;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/app/damnvulnerablebank/SplashScreen;->r:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/app/damnvulnerablebank/SplashScreen;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/app/damnvulnerablebank/SplashScreen;->s:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/app/damnvulnerablebank/SplashScreen$a;

    invoke-direct {v0, p0}, Lcom/app/damnvulnerablebank/SplashScreen$a;-><init>(Lcom/app/damnvulnerablebank/SplashScreen;)V

    const/16 v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
