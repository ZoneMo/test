.class public final Landroid/support/v7/internal/view/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/a/b;


# instance fields
.field private final cc:I

.field private final iR:I

.field private final iS:I

.field private final iT:I

.field private iU:Ljava/lang/CharSequence;

.field private iV:Ljava/lang/CharSequence;

.field private iW:Landroid/content/Intent;

.field private iX:C

.field private iY:C

.field private iZ:Landroid/graphics/drawable/Drawable;

.field private ja:I

.field private jb:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v1, p0, Landroid/support/v7/internal/view/menu/a;->ja:I

    .line 55
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    .line 64
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->mContext:Landroid/content/Context;

    .line 65
    const v0, 0x102002c

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->cc:I

    .line 66
    iput v1, p0, Landroid/support/v7/internal/view/menu/a;->iR:I

    .line 67
    iput v1, p0, Landroid/support/v7/internal/view/menu/a;->iS:I

    .line 68
    iput v1, p0, Landroid/support/v7/internal/view/menu/a;->iT:I

    .line 69
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/a;->iU:Ljava/lang/CharSequence;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/af;)Landroid/support/v4/a/a/b;
    .locals 0
    .parameter

    .prologue
    .line 293
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/n;)Landroid/support/v4/a/a/b;
    .locals 1
    .parameter

    .prologue
    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final collapseActionView()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public final expandActionView()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 73
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/a;->iY:C

    return v0
.end method

.method public final getGroupId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->iR:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->iZ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->iW:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->cc:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .prologue
    .line 97
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/a;->iX:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->iT:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->iU:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->iV:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public final isCheckable()Z
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->iY:C

    .line 138
    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter

    .prologue
    .line 142
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    .line 143
    return-object p0

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter

    .prologue
    .line 152
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    .line 153
    return-object p0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter

    .prologue
    .line 157
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    .line 158
    return-object p0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 168
    iput p1, p0, Landroid/support/v7/internal/view/menu/a;->ja:I

    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/a;->iZ:Landroid/graphics/drawable/Drawable;

    .line 170
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->iZ:Landroid/graphics/drawable/Drawable;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->ja:I

    .line 164
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->iW:Landroid/content/Intent;

    .line 175
    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->iX:C

    .line 180
    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->jb:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 185
    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->iX:C

    .line 190
    iput-char p2, p0, Landroid/support/v7/internal/view/menu/a;->iY:C

    .line 191
    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 0
    .parameter

    .prologue
    .line 229
    return-void
.end method

.method public final bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .parameter

    .prologue
    .line 33
    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/a;->iU:Ljava/lang/CharSequence;

    .line 201
    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->iU:Ljava/lang/CharSequence;

    .line 196
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->iV:Ljava/lang/CharSequence;

    .line 206
    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter

    .prologue
    .line 210
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->mFlags:I

    .line 211
    return-object p0

    .line 210
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
