.class final Ldergoogler/dg1patch/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldergoogler/dg1patch/a/d;


# direct methods
.method constructor <init>(Ldergoogler/dg1patch/a/d;)V
    .registers 2

    iput-object p1, p0, Ldergoogler/dg1patch/a/e;->a:Ldergoogler/dg1patch/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Ldergoogler/dg1patch/a/e;->a:Ldergoogler/dg1patch/a/d;

    invoke-static {v0}, Ldergoogler/dg1patch/a/d;->a(Ldergoogler/dg1patch/a/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Ldergoogler/dg1patch/a/e;->a:Ldergoogler/dg1patch/a/d;

    invoke-static {v0}, Ldergoogler/dg1patch/a/d;->a(Ldergoogler/dg1patch/a/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ldergoogler/dg1patch/a/e;->a:Ldergoogler/dg1patch/a/d;

    invoke-static {v1}, Ldergoogler/dg1patch/a/d;->b(Ldergoogler/dg1patch/a/d;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Ldergoogler/dg1patch/a/e;->a:Ldergoogler/dg1patch/a/d;

    invoke-static {v2}, Ldergoogler/dg1patch/a/d;->b(Ldergoogler/dg1patch/a/d;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Ldergoogler/dg1patch/a/e;->a:Ldergoogler/dg1patch/a/d;

    invoke-static {v3}, Ldergoogler/dg1patch/a/d;->b(Ldergoogler/dg1patch/a/d;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Ldergoogler/dg1patch/a/e;->a:Ldergoogler/dg1patch/a/d;

    invoke-static {v4}, Ldergoogler/dg1patch/a/d;->b(Ldergoogler/dg1patch/a/d;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Ldergoogler/dg1patch/a/e;->a:Ldergoogler/dg1patch/a/d;

    invoke-static {v0}, Ldergoogler/dg1patch/a/d;->b(Ldergoogler/dg1patch/a/d;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method
