.class public abstract Lek;
.super Landroid/view/View;


# instance fields
.field protected a:[I

.field protected b:I

.field protected c:Landroid/content/Context;

.field protected d:Leb;

.field protected e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lek;->a:[I

    const/4 v0, 0x0

    iput v0, p0, Lek;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lek;->d:Leb;

    iput-boolean v0, p0, Lek;->e:Z

    iput-object p1, p0, Lek;->c:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lek;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lek;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-class v2, La$a;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :catch_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lek;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "id"

    iget-object v3, p0, Lek;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lek;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lek;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lek;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v1}, Lek;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_5
    const-string v0, "ConstraintHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find id of \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIds(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lek;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lek;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lek;->d:Leb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lek;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v1, p0, Lek;->d:Leb;

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:Ldy;

    :cond_1
    return-void
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lek;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, La$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, La$b;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lek;->f:Ljava/lang/String;

    iget-object v2, p0, Lek;->f:Ljava/lang/String;

    invoke-direct {p0, v2}, Lek;->setIds(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3

    invoke-virtual {p0}, Lek;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lek;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lek;->setIds(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lek;->d:Leb;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lek;->d:Leb;

    invoke-virtual {v0}, Leb;->A()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lek;->b:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lek;->a:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lek;->d:Leb;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Ldy;

    move-result-object v1

    invoke-virtual {v2, v1}, Leb;->a(Ldy;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    iget-object v0, p0, Lek;->a:[I

    iget v1, p0, Lek;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lek;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lek;->setMeasuredDimension(II)V

    return-void
.end method

.method public setReferencedIds([I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lek;->b:I

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lek;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 1

    iget p2, p0, Lek;->b:I

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lek;->a:[I

    array-length v0, v0

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lek;->a:[I

    iget-object v0, p0, Lek;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    iput-object p2, p0, Lek;->a:[I

    :cond_0
    iget-object p2, p0, Lek;->a:[I

    iget v0, p0, Lek;->b:I

    aput p1, p2, v0

    iget p1, p0, Lek;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lek;->b:I

    return-void
.end method
