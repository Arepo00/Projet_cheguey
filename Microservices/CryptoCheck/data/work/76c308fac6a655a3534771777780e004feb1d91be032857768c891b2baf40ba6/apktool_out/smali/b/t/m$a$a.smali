.class public Lb/t/m$a$a;
.super Lb/t/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/t/m$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/f/a;

.field public final synthetic b:Lb/t/m$a;


# direct methods
.method public constructor <init>(Lb/t/m$a;Lb/f/a;)V
    .locals 0

    iput-object p1, p0, Lb/t/m$a$a;->b:Lb/t/m$a;

    iput-object p2, p0, Lb/t/m$a$a;->a:Lb/f/a;

    invoke-direct {p0}, Lb/t/l;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/t/i;)V
    .locals 2

    iget-object v0, p0, Lb/t/m$a$a;->a:Lb/f/a;

    iget-object v1, p0, Lb/t/m$a$a;->b:Lb/t/m$a;

    iget-object v1, v1, Lb/t/m$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lb/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lb/t/i;->w(Lb/t/i$d;)Lb/t/i;

    return-void
.end method
