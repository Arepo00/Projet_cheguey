.class public Lcom/app/damnvulnerablebank/MainActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/damnvulnerablebank/MainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/app/damnvulnerablebank/MainActivity;


# direct methods
.method public constructor <init>(Lcom/app/damnvulnerablebank/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/app/damnvulnerablebank/MainActivity$a;->b:Lcom/app/damnvulnerablebank/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/app/damnvulnerablebank/MainActivity$a;->b:Lcom/app/damnvulnerablebank/MainActivity;

    invoke-static {p1}, Lcom/app/damnvulnerablebank/MainActivity;->u(Lcom/app/damnvulnerablebank/MainActivity;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
