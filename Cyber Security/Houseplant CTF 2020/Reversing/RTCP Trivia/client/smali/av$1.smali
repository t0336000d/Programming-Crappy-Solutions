.class final Lav$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lav;


# direct methods
.method constructor <init>(Lav;)V
    .locals 0

    iput-object p1, p0, Lav$1;->a:Lav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lav$1;->a:Lav;

    invoke-virtual {v0}, Lav;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lav$1;->a:Lav;

    iget-object v0, v0, Lav;->a:Lci;

    iget-boolean v0, v0, Lcg;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lav$1;->a:Lav;

    iget-object v0, v0, Lav;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lav$1;->a:Lav;

    iget-object v0, v0, Lav;->a:Lci;

    invoke-virtual {v0}, Lci;->b()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lav$1;->a:Lav;

    invoke-virtual {v0}, Lav;->c()V

    :cond_2
    return-void
.end method
