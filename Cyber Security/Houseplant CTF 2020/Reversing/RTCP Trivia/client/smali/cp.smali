.class final Lcp;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/res/ColorStateList;

.field public b:Landroid/graphics/PorterDuff$Mode;

.field public c:Z

.field public d:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcp;->a:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcp;->d:Z

    iput-object v0, p0, Lcp;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Lcp;->c:Z

    return-void
.end method
