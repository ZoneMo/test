.class Landroid/support/v7/app/f;
.super Landroid/support/v7/app/e;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/af;
.implements Landroid/support/v7/internal/view/menu/p;


# static fields
.field private static final he:[I


# instance fields
.field private hf:Landroid/support/v7/internal/widget/ActionBarView;

.field private hg:Landroid/support/v7/internal/view/menu/m;

.field private hh:Landroid/support/v7/internal/view/menu/o;

.field private hi:Landroid/support/v7/a/a;

.field private hj:Z

.field private hk:Z

.field private hl:Z

.field private hm:Z

.field private final hn:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/tencent/mm/d;->homeAsUpIndicator:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/app/f;->he:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 66
    new-instance v0, Landroid/support/v7/app/g;

    invoke-direct {v0, p0}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/f;)V

    iput-object v0, p0, Landroid/support/v7/app/f;->hn:Ljava/lang/Runnable;

    .line 83
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/f;)Landroid/support/v7/internal/view/menu/o;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/f;->bh()Landroid/support/v7/internal/view/menu/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/f;Landroid/support/v7/internal/view/menu/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/app/f;->c(Landroid/support/v7/internal/view/menu/o;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/app/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/f;->hm:Z

    return v0
.end method

.method private bh()Landroid/support/v7/internal/view/menu/o;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {p0}, Landroid/support/v7/app/f;->bf()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/o;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/p;)V

    .line 378
    return-object v0
.end method

.method private c(Landroid/support/v7/internal/view/menu/o;)V
    .locals 2
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/app/f;->hh:Landroid/support/v7/internal/view/menu/o;

    if-ne p1, v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/f;->hh:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Landroid/support/v7/app/f;->hh:Landroid/support/v7/internal/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Landroid/support/v7/internal/view/menu/ae;)V

    .line 428
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/f;->hh:Landroid/support/v7/internal/view/menu/o;

    .line 430
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/ae;)V

    .line 434
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/a/a/a;Landroid/support/v7/internal/view/menu/af;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/o;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->bM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->bL()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->bH()Z

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->bI()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/o;->close()V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->closeOptionsMenu()V

    .line 337
    return-void
.end method

.method public final aX()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Landroid/support/v7/app/f;->hl:Z

    .line 242
    return v0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/support/v7/app/f;->bg()V

    .line 162
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hc:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Lcom/tencent/mm/i;->akK:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 165
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->d(Ljava/lang/CharSequence;)V

    .line 253
    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/o;)Z
    .locals 1
    .parameter

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public bb()Landroid/support/v7/app/ActionBar;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/support/v7/app/f;->bg()V

    .line 88
    new-instance v0, Landroid/support/v7/app/k;

    iget-object v1, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/k;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    return-object v0
.end method

.method public final bc()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/f;->hj:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/app/f;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/k;

    .line 99
    invoke-virtual {v0}, Landroid/support/v7/app/k;->bc()V

    .line 101
    :cond_0
    return-void
.end method

.method public final bd()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 442
    iget-object v1, p0, Landroid/support/v7/app/f;->hi:Landroid/support/v7/a/a;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Landroid/support/v7/app/f;->hi:Landroid/support/v7/a/a;

    invoke-virtual {v1}, Landroid/support/v7/a/a;->finish()V

    .line 453
    :goto_0
    return v0

    .line 448
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->cK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->cL()V

    goto :goto_0

    .line 453
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final bg()V
    .locals 5

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hc:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/app/f;->hj:Z

    if-nez v0, :cond_3

    .line 173
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hd:Z

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Lcom/tencent/mm/k;->aRM:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->w(I)V

    .line 178
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Lcom/tencent/mm/i;->akJ:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    .line 179
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/Window$Callback;)V

    .line 184
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hk:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->cH()V

    .line 187
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hl:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->cI()V

    .line 194
    :cond_1
    const-string v0, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Landroid/support/v7/app/f;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 198
    if-eqz v3, :cond_5

    .line 199
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/e;->ZI:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    move v2, v0

    .line 208
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Lcom/tencent/mm/i;->aMi:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 210
    if-eqz v0, :cond_2

    .line 211
    iget-object v1, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 212
    iget-object v1, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->s(Z)V

    .line 213
    iget-object v1, p0, Landroid/support/v7/app/f;->hf:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ActionBarView;->t(Z)V

    .line 215
    iget-object v1, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v4, Lcom/tencent/mm/i;->akQ:I

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 217
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 218
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->s(Z)V

    .line 219
    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->t(Z)V

    .line 222
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->hj:Z

    .line 224
    invoke-virtual {p0}, Landroid/support/v7/app/f;->u()V

    .line 226
    :cond_3
    return-void

    .line 176
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Lcom/tencent/mm/k;->aRL:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->w(I)V

    goto :goto_0

    .line 202
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Lcom/tencent/mm/p;->bIW:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 203
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 205
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v0

    goto :goto_1
.end method

.method public final h(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/ActionBarActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 257
    .line 259
    if-nez p1, :cond_2

    .line 260
    const/4 v2, 0x1

    .line 261
    iget-object v1, p0, Landroid/support/v7/app/f;->hh:Landroid/support/v7/internal/view/menu/o;

    .line 263
    iget-object v3, p0, Landroid/support/v7/app/f;->hi:Landroid/support/v7/a/a;

    if-nez v3, :cond_1

    .line 267
    if-nez v1, :cond_0

    .line 269
    invoke-direct {p0}, Landroid/support/v7/app/f;->bh()Landroid/support/v7/internal/view/menu/o;

    move-result-object v1

    .line 270
    invoke-direct {p0, v1}, Landroid/support/v7/app/f;->c(Landroid/support/v7/internal/view/menu/o;)V

    .line 273
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->bX()V

    .line 275
    iget-object v2, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2, v4, v1}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v2

    .line 278
    :cond_0
    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->bX()V

    .line 282
    iget-object v2, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2, v4, v0, v1}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    .line 286
    :cond_1
    if-eqz v2, :cond_5

    .line 287
    iget-object v2, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Landroid/support/v7/app/f;->hh:Landroid/support/v7/internal/view/menu/o;

    if-nez v3, :cond_3

    :goto_0
    check-cast v0, Landroid/view/View;

    .line 290
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->bY()V

    .line 297
    :cond_2
    :goto_1
    return-object v0

    .line 287
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/mm/p;->bJz:[I

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x4

    sget v4, Lcom/tencent/mm/o;->bIH:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/internal/view/menu/m;

    sget v4, Lcom/tencent/mm/k;->aRY:I

    invoke-direct {v0, v4, v3}, Landroid/support/v7/internal/view/menu/m;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/support/v7/internal/view/menu/af;)V

    iget-object v0, p0, Landroid/support/v7/app/f;->hh:Landroid/support/v7/internal/view/menu/o;

    iget-object v3, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/ae;)V

    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/view/menu/m;->b(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ag;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/f;->hg:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/view/menu/m;->j(Z)V

    goto :goto_2

    .line 293
    :cond_5
    invoke-direct {p0, v0}, Landroid/support/v7/app/f;->c(Landroid/support/v7/internal/view/menu/o;)V

    goto :goto_1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ai;->l(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p2

    .line 321
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onPostResume()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/support/v7/app/f;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/k;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->h(Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onStop()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/support/v7/app/f;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/k;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->h(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 2
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/support/v7/app/f;->bg()V

    .line 135
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hc:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Lcom/tencent/mm/i;->akK:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 139
    iget-object v1, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 140
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->w(I)V

    goto :goto_0
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/support/v7/app/f;->bg()V

    .line 122
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hc:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Lcom/tencent/mm/i;->akK:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 126
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->D(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/v7/app/f;->bg()V

    .line 149
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hc:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Lcom/tencent/mm/i;->akK:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 153
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 369
    iget-boolean v0, p0, Landroid/support/v7/app/f;->hm:Z

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->hm:Z

    .line 371
    iget-object v0, p0, Landroid/support/v7/app/f;->gZ:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/f;->hn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 373
    :cond_0
    return-void
.end method
