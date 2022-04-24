.class public final Ldergoogler/dg1patch/a/d;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:J

.field private final b:Landroid/graphics/Rect;

.field private c:Z

.field private d:F

.field private e:F

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Landroid/view/VelocityTracker;

.field private j:I

.field private k:J

.field private l:Landroid/view/View;


# direct methods
.method private static a(III)I
    .registers 4

    if-ge p1, p2, :cond_4

    if-gez p0, :cond_6

    :cond_4
    const/4 p0, 0x0

    :cond_5
    :goto_5
    return p0

    :cond_6
    add-int v0, p1, p0

    if-le v0, p2, :cond_5

    sub-int p0, p2, p1

    goto :goto_5
.end method

.method private a(Landroid/graphics/Rect;)I
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v0

    add-int v1, v0, v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    add-int/2addr v0, v4

    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_28

    sub-int/2addr v1, v4

    :cond_28
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_52

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v0, :cond_52

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_4c

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, 0x0

    :goto_3c
    invoke-virtual {p0, v2}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4a
    move v2, v0

    goto :goto_7

    :cond_4c
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    goto :goto_3c

    :cond_52
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v0, :cond_76

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_76

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, v3, :cond_70

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_66
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4a

    :cond_70
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_66

    :cond_76
    move v0, v2

    goto :goto_4a
.end method

.method static synthetic a(Ldergoogler/dg1patch/a/d;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->l:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Ldergoogler/dg1patch/a/d;->j:I

    if-ne v1, v2, :cond_2e

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Ldergoogler/dg1patch/a/d;->e:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Ldergoogler/dg1patch/a/d;->d:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Ldergoogler/dg1patch/a/d;->j:I

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_2e
    return-void

    :cond_2f
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Ldergoogler/dg1patch/a/d;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/d;->a(Landroid/graphics/Rect;)I

    move-result v0

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->b(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v0, :cond_1d

    :cond_1a
    invoke-virtual {p0, v1, v0}, Ldergoogler/dg1patch/a/d;->scrollBy(II)V

    :cond_1d
    return-void
.end method

.method private a()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method private a(I)Z
    .registers 20

    const/16 v1, 0x82

    move/from16 v0, p1

    if-ne v0, v1, :cond_92

    const/4 v1, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_40

    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v1

    if-lez v1, :cond_40

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_40
    move-object/from16 v0, p0

    iget-object v1, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v11

    add-int v12, v11, v1

    const/16 v1, 0x21

    move/from16 v0, p1

    if-ne v0, v1, :cond_95

    const/4 v1, 0x1

    move v2, v1

    :goto_5f
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ldergoogler/dg1patch/a/d;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v1, 0x0

    move v8, v1

    :goto_6e
    if-lt v8, v14, :cond_98

    if-nez v5, :cond_74

    move-object/from16 v5, p0

    :cond_74
    if-lt v9, v11, :cond_ea

    if-gt v10, v12, :cond_ea

    const/4 v1, 0x0

    :goto_79
    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v5, v2, :cond_91

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_91

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ldergoogler/dg1patch/a/d;->c:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ldergoogler/dg1patch/a/d;->c:Z

    :cond_91
    return v1

    :cond_92
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_95
    const/4 v1, 0x0

    move v2, v1

    goto :goto_5f

    :cond_98
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v15

    if-ge v9, v15, :cond_f8

    if-ge v7, v10, :cond_f8

    if-ge v9, v7, :cond_bc

    if-ge v15, v10, :cond_bc

    const/4 v3, 0x1

    :goto_af
    if-nez v5, :cond_be

    move/from16 v17, v3

    move-object v3, v1

    move/from16 v1, v17

    :goto_b6
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-object v5, v3

    move v4, v1

    goto :goto_6e

    :cond_bc
    const/4 v3, 0x0

    goto :goto_af

    :cond_be
    if-eqz v2, :cond_c8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    if-lt v7, v0, :cond_da

    :cond_c8
    if-nez v2, :cond_d0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v15, v7, :cond_da

    :cond_d0
    const/4 v7, 0x0

    :goto_d1
    if-eqz v4, :cond_dc

    if-eqz v3, :cond_f8

    if-eqz v7, :cond_f8

    move-object v3, v1

    move v1, v4

    goto :goto_b6

    :cond_da
    const/4 v7, 0x1

    goto :goto_d1

    :cond_dc
    if-eqz v3, :cond_e5

    const/4 v3, 0x1

    move/from16 v17, v3

    move-object v3, v1

    move/from16 v1, v17

    goto :goto_b6

    :cond_e5
    if-eqz v7, :cond_f8

    move-object v3, v1

    move v1, v4

    goto :goto_b6

    :cond_ea
    if-eqz v2, :cond_f5

    sub-int v1, v9, v11

    :goto_ee
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Ldergoogler/dg1patch/a/d;->e(I)V

    move v1, v6

    goto :goto_79

    :cond_f5
    sub-int v1, v10, v12

    goto :goto_ee

    :cond_f8
    move v1, v4

    move-object v3, v5

    goto :goto_b6
.end method

.method private a(II)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v1

    if-lez v1, :cond_31

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    if-lt p2, v4, :cond_31

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v2, v4, v2

    if-ge p2, v2, :cond_31

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p1, v2, :cond_31

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v1, v2, v1

    if-lt p1, v1, :cond_32

    :cond_31
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method private a(Landroid/view/View;I)Z
    .registers 6

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Ldergoogler/dg1patch/a/d;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private a(Landroid/view/View;II)Z
    .registers 6

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Ldergoogler/dg1patch/a/d;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    const/4 v1, 0x1

    if-ne p1, p2, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_17

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private b(Landroid/graphics/Rect;)I
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return v2

    :cond_8
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v0

    add-int v1, v0, v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHorizontalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-lez v5, :cond_1b

    add-int/2addr v0, v4

    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_28

    sub-int/2addr v1, v4

    :cond_28
    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-le v4, v1, :cond_52

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-le v4, v0, :cond_52

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v3, :cond_4c

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, 0x0

    :goto_3c
    invoke-virtual {p0, v2}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4a
    move v2, v0

    goto :goto_7

    :cond_4c
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    goto :goto_3c

    :cond_52
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ge v4, v0, :cond_76

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ge v4, v1, :cond_76

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v2, v3, :cond_70

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_66
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4a

    :cond_70
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_66

    :cond_76
    move v0, v2

    goto :goto_4a
.end method

.method static synthetic b(Ldergoogler/dg1patch/a/d;)Landroid/graphics/Rect;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private b()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method private b(I)Z
    .registers 20

    const/16 v1, 0x42

    move/from16 v0, p1

    if-ne v0, v1, :cond_91

    const/4 v1, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_3f

    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3f

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_3f
    move-object/from16 v0, p0

    iget-object v1, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->right:I

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v11

    add-int v12, v11, v1

    const/16 v1, 0x11

    move/from16 v0, p1

    if-ne v0, v1, :cond_94

    const/4 v1, 0x1

    move v2, v1

    :goto_5e
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ldergoogler/dg1patch/a/d;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v1, 0x0

    move v8, v1

    :goto_6d
    if-lt v8, v14, :cond_97

    if-nez v5, :cond_73

    move-object/from16 v5, p0

    :cond_73
    if-lt v9, v11, :cond_e9

    if-gt v10, v12, :cond_e9

    const/4 v1, 0x0

    :goto_78
    invoke-virtual/range {p0 .. p0}, Ldergoogler/dg1patch/a/d;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v5, v2, :cond_90

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_90

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ldergoogler/dg1patch/a/d;->c:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ldergoogler/dg1patch/a/d;->c:Z

    :cond_90
    return v1

    :cond_91
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_94
    const/4 v1, 0x0

    move v2, v1

    goto :goto_5e

    :cond_97
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v15

    if-ge v9, v15, :cond_f7

    if-ge v7, v10, :cond_f7

    if-ge v9, v7, :cond_bb

    if-ge v15, v10, :cond_bb

    const/4 v3, 0x1

    :goto_ae
    if-nez v5, :cond_bd

    move/from16 v17, v3

    move-object v3, v1

    move/from16 v1, v17

    :goto_b5
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-object v5, v3

    move v4, v1

    goto :goto_6d

    :cond_bb
    const/4 v3, 0x0

    goto :goto_ae

    :cond_bd
    if-eqz v2, :cond_c7

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v16

    move/from16 v0, v16

    if-lt v7, v0, :cond_d9

    :cond_c7
    if-nez v2, :cond_cf

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    if-gt v15, v7, :cond_d9

    :cond_cf
    const/4 v7, 0x0

    :goto_d0
    if-eqz v4, :cond_db

    if-eqz v3, :cond_f7

    if-eqz v7, :cond_f7

    move-object v3, v1

    move v1, v4

    goto :goto_b5

    :cond_d9
    const/4 v7, 0x1

    goto :goto_d0

    :cond_db
    if-eqz v3, :cond_e4

    const/4 v3, 0x1

    move/from16 v17, v3

    move-object v3, v1

    move/from16 v1, v17

    goto :goto_b5

    :cond_e4
    if-eqz v7, :cond_f7

    move-object v3, v1

    move v1, v4

    goto :goto_b5

    :cond_e9
    if-eqz v2, :cond_f4

    sub-int v1, v9, v11

    :goto_ed
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Ldergoogler/dg1patch/a/d;->f(I)V

    move v1, v6

    goto :goto_78

    :cond_f4
    sub-int v1, v10, v12

    goto :goto_ed

    :cond_f7
    move v1, v4

    move-object v3, v5

    goto :goto_b5
.end method

.method private c(I)Z
    .registers 10

    const/16 v7, 0x82

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_b

    const/4 v0, 0x0

    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    if-eqz v4, :cond_68

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v1, v5}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_68

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v1}, Ldergoogler/dg1patch/a/d;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->a(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->e(I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_43
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v3, v1}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_a2

    :goto_55
    if-eqz v3, :cond_66

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Ldergoogler/dg1patch/a/d;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->requestFocus()Z

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->setDescendantFocusability(I)V

    :cond_66
    move v0, v2

    :goto_67
    return v0

    :cond_68
    const/16 v4, 0x21

    if-ne p1, v4, :cond_7a

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v4

    if-ge v4, v1, :cond_7a

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v1

    :cond_76
    :goto_76
    if-nez v1, :cond_9a

    move v0, v3

    goto :goto_67

    :cond_7a
    if-ne p1, v7, :cond_76

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v4

    if-lez v4, :cond_76

    invoke-virtual {p0, v3}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v6, v4, v5

    if-ge v6, v1, :cond_76

    sub-int v1, v4, v5

    goto :goto_76

    :cond_9a
    if-ne p1, v7, :cond_a0

    :goto_9c
    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->e(I)V

    goto :goto_43

    :cond_a0
    neg-int v1, v1

    goto :goto_9c

    :cond_a2
    move v3, v2

    goto :goto_55
.end method

.method private d(I)Z
    .registers 10

    const/16 v7, 0x42

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_b

    const/4 v0, 0x0

    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getRight()I

    move-result v5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    if-eqz v4, :cond_60

    invoke-direct {p0, v4, v1}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_60

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v1}, Ldergoogler/dg1patch/a/d;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->b(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->f(I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_3f
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-direct {p0, v0, v3}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_9a

    :goto_4d
    if-eqz v3, :cond_5e

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Ldergoogler/dg1patch/a/d;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->requestFocus()Z

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->setDescendantFocusability(I)V

    :cond_5e
    move v0, v2

    :goto_5f
    return v0

    :cond_60
    const/16 v4, 0x11

    if-ne p1, v4, :cond_72

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v4

    if-ge v4, v1, :cond_72

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v1

    :cond_6e
    :goto_6e
    if-nez v1, :cond_92

    move v0, v3

    goto :goto_5f

    :cond_72
    if-ne p1, v7, :cond_6e

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v4

    if-lez v4, :cond_6e

    invoke-virtual {p0, v3}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v6, v4, v5

    if-ge v6, v1, :cond_6e

    sub-int v1, v4, v5

    goto :goto_6e

    :cond_92
    if-ne p1, v7, :cond_98

    :goto_94
    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->f(I)V

    goto :goto_3f

    :cond_98
    neg-int v1, v1

    goto :goto_94

    :cond_9a
    move v3, v2

    goto :goto_4d
.end method

.method private e(I)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ldergoogler/dg1patch/a/d;->scrollBy(II)V

    :cond_6
    return-void
.end method

.method private f(I)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldergoogler/dg1patch/a/d;->scrollBy(II)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final computeHorizontalScrollOffset()I
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final computeHorizontalScrollRange()I
    .registers 4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-nez v1, :cond_15

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_14
.end method

.method public final computeScroll()V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v2

    if-lez v2, :cond_49

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v0, v3, v4}, Ldergoogler/dg1patch/a/d;->a(III)I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v3, v2}, Ldergoogler/dg1patch/a/d;->a(III)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_49
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->awakenScrollBars()Z

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->postInvalidate()V

    :cond_4f
    return-void
.end method

.method protected final computeVerticalScrollOffset()I
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final computeVerticalScrollRange()I
    .registers 4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    if-nez v1, :cond_15

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_14
.end method

.method public final disdg1patchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    const/16 v5, 0x82

    const/16 v4, 0x42

    const/16 v3, 0x21

    const/16 v2, 0x11

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->disdg1patchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_7d

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_80

    :cond_21
    move v1, v0

    :goto_22
    if-nez v1, :cond_7d

    :goto_24
    return v0

    :pswitch_25
    invoke-direct {p0}, Ldergoogler/dg1patch/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-direct {p0, v2}, Ldergoogler/dg1patch/a/d;->d(I)Z

    move-result v1

    goto :goto_22

    :cond_36
    invoke-direct {p0, v2}, Ldergoogler/dg1patch/a/d;->b(I)Z

    move-result v1

    goto :goto_22

    :pswitch_3b
    invoke-direct {p0}, Ldergoogler/dg1patch/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-direct {p0, v4}, Ldergoogler/dg1patch/a/d;->d(I)Z

    move-result v1

    goto :goto_22

    :cond_4c
    invoke-direct {p0, v4}, Ldergoogler/dg1patch/a/d;->b(I)Z

    move-result v1

    goto :goto_22

    :pswitch_51
    invoke-direct {p0}, Ldergoogler/dg1patch/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_62

    invoke-direct {p0, v3}, Ldergoogler/dg1patch/a/d;->c(I)Z

    move-result v1

    goto :goto_22

    :cond_62
    invoke-direct {p0, v3}, Ldergoogler/dg1patch/a/d;->a(I)Z

    move-result v1

    goto :goto_22

    :pswitch_67
    invoke-direct {p0}, Ldergoogler/dg1patch/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_78

    invoke-direct {p0, v5}, Ldergoogler/dg1patch/a/d;->c(I)Z

    move-result v1

    goto :goto_22

    :cond_78
    invoke-direct {p0, v5}, Ldergoogler/dg1patch/a/d;->a(I)Z

    move-result v1

    goto :goto_22

    :cond_7d
    const/4 v0, 0x1

    goto :goto_24

    nop

    :pswitch_data_80
    .packed-switch 0x13
        :pswitch_51
        :pswitch_67
        :pswitch_25
        :pswitch_3b
    .end packed-switch
.end method

.method protected final getBottomFadingEdgeStrength()F
    .registers 5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    if-ge v1, v0, :cond_2c

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7

    :cond_2c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7
.end method

.method protected final getLeftFadingEdgeStrength()F
    .registers 3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHorizontalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1b

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7

    :cond_1b
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7
.end method

.method protected final getRightFadingEdgeStrength()F
    .registers 5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHorizontalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    if-ge v1, v0, :cond_2c

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7

    :cond_2c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7
.end method

.method protected final getTopFadingEdgeStrength()F
    .registers 3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1b

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_7

    :cond_1b
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7
.end method

.method protected final measureChild(Landroid/view/View;II)V
    .registers 6

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected final measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected final onFinishInflate()V
    .registers 2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldergoogler/dg1patch/a/d;->l:Landroid/view/View;

    :cond_d
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    iget-boolean v3, p0, Ldergoogler/dg1patch/a/d;->h:Z

    if-eqz v3, :cond_f

    :goto_e
    return v1

    :cond_f
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_78

    :cond_14
    :goto_14
    :pswitch_14
    iget-boolean v1, p0, Ldergoogler/dg1patch/a/d;->h:Z

    goto :goto_e

    :pswitch_17
    iget v0, p0, Ldergoogler/dg1patch/a/d;->j:I

    if-eq v0, v4, :cond_14

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Ldergoogler/dg1patch/a/d;->d:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    if-lez v3, :cond_32

    iput-boolean v1, p0, Ldergoogler/dg1patch/a/d;->h:Z

    iput v2, p0, Ldergoogler/dg1patch/a/d;->d:F

    :cond_32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v2, p0, Ldergoogler/dg1patch/a/d;->e:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    if-lez v2, :cond_14

    iput-boolean v1, p0, Ldergoogler/dg1patch/a/d;->h:Z

    iput v0, p0, Ldergoogler/dg1patch/a/d;->e:F

    goto :goto_14

    :pswitch_46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v4, v2

    float-to-int v5, v3

    invoke-direct {p0, v4, v5}, Ldergoogler/dg1patch/a/d;->a(II)Z

    move-result v4

    if-nez v4, :cond_59

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/d;->h:Z

    goto :goto_14

    :cond_59
    iput v3, p0, Ldergoogler/dg1patch/a/d;->d:F

    iput v2, p0, Ldergoogler/dg1patch/a/d;->e:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Ldergoogler/dg1patch/a/d;->j:I

    const/4 v2, 0x0

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_6d

    :goto_6a
    iput-boolean v0, p0, Ldergoogler/dg1patch/a/d;->h:Z

    goto :goto_14

    :cond_6d
    move v0, v1

    goto :goto_6a

    :pswitch_6f
    iput-boolean v0, p0, Ldergoogler/dg1patch/a/d;->h:Z

    iput v4, p0, Ldergoogler/dg1patch/a/d;->j:I

    goto :goto_14

    :pswitch_74
    invoke-direct {p0, p1}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/MotionEvent;)V

    goto :goto_14

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_46
        :pswitch_6f
        :pswitch_17
        :pswitch_6f
        :pswitch_14
        :pswitch_14
        :pswitch_74
    .end packed-switch
.end method

.method protected final onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/d;->f:Z

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->g:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->g:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;)V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Ldergoogler/dg1patch/a/d;->g:Landroid/view/View;

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldergoogler/dg1patch/a/d;->scrollTo(II)V

    return-void
.end method

.method protected final onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5

    if-nez p2, :cond_f

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_b
    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_b

    :cond_18
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_e
.end method

.method protected final onSizeChanged(IIII)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p4}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Ldergoogler/dg1patch/a/d;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->a(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Ldergoogler/dg1patch/a/d;->e(I)V

    :cond_26
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getRight()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Ldergoogler/dg1patch/a/d;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->b:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/d;->b(Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0, v0}, Ldergoogler/dg1patch/a/d;->f(I)V

    goto :goto_b
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v5, 0x0

    const-wide/16 v10, 0xc8

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v2, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1d

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    :cond_1d
    iget-object v2, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_122

    :cond_2b
    :goto_2b
    :pswitch_2b
    move v0, v1

    goto :goto_12

    :pswitch_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v4, v2

    float-to-int v5, v3

    invoke-direct {p0, v4, v5}, Ldergoogler/dg1patch/a/d;->a(II)Z

    move-result v4

    iput-boolean v4, p0, Ldergoogler/dg1patch/a/d;->h:Z

    if-eqz v4, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ldergoogler/dg1patch/a/d;->k:J

    sub-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-gez v4, :cond_4e

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Ldergoogler/dg1patch/a/d;->k:J

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5d
    iput v3, p0, Ldergoogler/dg1patch/a/d;->d:F

    iput v2, p0, Ldergoogler/dg1patch/a/d;->e:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Ldergoogler/dg1patch/a/d;->j:I

    goto :goto_2b

    :pswitch_68
    iget-boolean v2, p0, Ldergoogler/dg1patch/a/d;->h:Z

    if-eqz v2, :cond_2b

    iget v2, p0, Ldergoogler/dg1patch/a/d;->j:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Ldergoogler/dg1patch/a/d;->d:F

    sub-float/2addr v4, v3

    float-to-int v4, v4

    iput v3, p0, Ldergoogler/dg1patch/a/d;->d:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Ldergoogler/dg1patch/a/d;->e:F

    sub-float/2addr v3, v2

    float-to-int v3, v3

    iput v2, p0, Ldergoogler/dg1patch/a/d;->e:F

    invoke-virtual {p0, v3, v4}, Ldergoogler/dg1patch/a/d;->scrollBy(II)V

    iget-object v2, p0, Ldergoogler/dg1patch/a/d;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_9c

    if-ne v3, v2, :cond_a0

    :cond_9c
    move v0, v1

    :cond_9d
    :goto_9d
    if-eqz v0, :cond_2b

    goto :goto_2b

    :cond_a0
    iget-object v2, p0, Ldergoogler/dg1patch/a/d;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_b3

    if-ne v3, v2, :cond_9d

    :cond_b3
    move v0, v1

    goto :goto_9d

    :pswitch_b5
    iget-boolean v2, p0, Ldergoogler/dg1patch/a/d;->h:Z

    if-eqz v2, :cond_2b

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_fe

    move v2, v0

    :goto_c0
    if-eqz v2, :cond_ec

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Ldergoogler/dg1patch/a/d;->l:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Ldergoogler/dg1patch/a/d;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v3, p0, Ldergoogler/dg1patch/a/d;->l:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ldergoogler/dg1patch/a/e;

    invoke-direct {v3, p0}, Ldergoogler/dg1patch/a/e;-><init>(Ldergoogler/dg1patch/a/d;)V

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ec
    const/4 v2, -0x1

    iput v2, p0, Ldergoogler/dg1patch/a/d;->j:I

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/d;->h:Z

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    goto/16 :goto_2b

    :cond_fe
    move v2, v1

    goto :goto_c0

    :pswitch_100
    iget-boolean v2, p0, Ldergoogler/dg1patch/a/d;->h:Z

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2b

    const/4 v2, -0x1

    iput v2, p0, Ldergoogler/dg1patch/a/d;->j:I

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/d;->h:Z

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Ldergoogler/dg1patch/a/d;->i:Landroid/view/VelocityTracker;

    goto/16 :goto_2b

    :pswitch_11c
    invoke-direct {p0, p1}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_2b

    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_b5
        :pswitch_68
        :pswitch_100
        :pswitch_2b
        :pswitch_2b
        :pswitch_11c
    .end packed-switch
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Ldergoogler/dg1patch/a/d;->c:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ldergoogler/dg1patch/a/d;->f:Z

    if-nez v0, :cond_f

    invoke-direct {p0, p2}, Ldergoogler/dg1patch/a/d;->a(Landroid/view/View;)V

    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_f
    iput-object p2, p0, Ldergoogler/dg1patch/a/d;->g:Landroid/view/View;

    goto :goto_b
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 13

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2}, Ldergoogler/dg1patch/a/d;->a(Landroid/graphics/Rect;)I

    move-result v2

    invoke-direct {p0, p2}, Ldergoogler/dg1patch/a/d;->b(Landroid/graphics/Rect;)I

    move-result v3

    if-nez v3, :cond_2c

    if-nez v2, :cond_2c

    move v0, v1

    :goto_24
    if-eqz v0, :cond_2b

    if-eqz p3, :cond_2e

    invoke-virtual {p0, v3, v2}, Ldergoogler/dg1patch/a/d;->scrollBy(II)V

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_24

    :cond_2e
    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ldergoogler/dg1patch/a/d;->a:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-lez v4, :cond_a2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v1}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v4, v5, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {p0, v1}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v4, v6, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v8, v6, v5, v1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->invalidate()V

    :goto_9b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldergoogler/dg1patch/a/d;->a:J

    goto :goto_2b

    :cond_a2
    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_ab

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_ab
    invoke-virtual {p0, v3, v2}, Ldergoogler/dg1patch/a/d;->scrollBy(II)V

    goto :goto_9b
.end method

.method public final requestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldergoogler/dg1patch/a/d;->f:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final scrollTo(II)V
    .registers 7

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getChildCount()I

    move-result v0

    if-lez v0, :cond_46

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldergoogler/dg1patch/a/d;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Ldergoogler/dg1patch/a/d;->a(III)I

    move-result v1

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v2, v0}, Ldergoogler/dg1patch/a/d;->a(III)I

    move-result v0

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_43

    invoke-virtual {p0}, Ldergoogler/dg1patch/a/d;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_46

    :cond_43
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_46
    return-void
.end method
