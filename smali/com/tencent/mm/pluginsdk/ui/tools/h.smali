.class final Lcom/tencent/mm/pluginsdk/ui/tools/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private euO:Ljava/lang/String;

.field final synthetic fuh:Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;

.field private fuk:Ljava/io/File;

.field private ful:Ljava/io/File;

.field private fum:[Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuh:Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/tools/h;-><init>(Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/tools/h;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuk:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/tools/h;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->ful:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 344
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuk:Ljava/io/File;

    .line 346
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->euO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuk:Ljava/io/File;

    .line 350
    :cond_0
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->ful:Ljava/io/File;

    .line 351
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->ful:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->ful:Ljava/io/File;

    new-instance v2, Lcom/tencent/mm/pluginsdk/ui/tools/i;

    invoke-direct {v2, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/i;-><init>(Lcom/tencent/mm/pluginsdk/ui/tools/h;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fum:[Ljava/io/File;

    .line 364
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fum:[Ljava/io/File;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 365
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fum:[Ljava/io/File;

    if-eqz v2, :cond_1

    array-length v1, v2

    if-nez v1, :cond_2

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v2, v1

    new-instance v7, Lcom/tencent/mm/pluginsdk/ui/tools/l;

    iget-object v8, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuh:Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;

    invoke-direct {v7, v8, v0}, Lcom/tencent/mm/pluginsdk/ui/tools/l;-><init>(Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;B)V

    iput-object v6, v7, Lcom/tencent/mm/pluginsdk/ui/tools/l;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mm/platformtools/h;->hI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tencent/mm/pluginsdk/ui/tools/l;->fuo:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/tools/j;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/j;-><init>(Lcom/tencent/mm/pluginsdk/ui/tools/h;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/tools/k;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/k;-><init>(Lcom/tencent/mm/pluginsdk/ui/tools/h;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/tools/l;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/tools/l;->file:Ljava/io/File;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/tools/l;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/tools/l;->file:Ljava/io/File;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 369
    :cond_6
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fum:[Ljava/io/File;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fum:[Ljava/io/File;

    if-nez v1, :cond_0

    .line 379
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fum:[Ljava/io/File;

    array-length v1, v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuk:Ljava/io/File;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuk:Ljava/io/File;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuk:Ljava/io/File;

    .line 389
    :goto_0
    return-object v0

    .line 388
    :cond_0
    const-string v0, "FileExplorer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subFile length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fum:[Ljava/io/File;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fum:[Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuk:Ljava/io/File;

    if-nez v1, :cond_1

    :goto_1
    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 394
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 400
    if-nez p2, :cond_0

    .line 401
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuh:Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;

    sget v1, Lcom/tencent/mm/k;->aVz:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 402
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/tools/m;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuh:Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;

    invoke-direct {v1, v0, v3}, Lcom/tencent/mm/pluginsdk/ui/tools/m;-><init>(Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;B)V

    .line 403
    sget v0, Lcom/tencent/mm/i;->atq:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/pluginsdk/ui/tools/m;->daU:Landroid/widget/ImageView;

    .line 404
    sget v0, Lcom/tencent/mm/i;->atr:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/pluginsdk/ui/tools/m;->djP:Landroid/widget/TextView;

    .line 405
    sget v0, Lcom/tencent/mm/i;->atu:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/pluginsdk/ui/tools/m;->fup:Landroid/widget/TextView;

    .line 407
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 408
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/tools/m;

    .line 413
    invoke-virtual {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/tools/h;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 414
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuk:Ljava/io/File;

    if-ne v1, v2, :cond_1

    .line 415
    iget-object v2, v0, Lcom/tencent/mm/pluginsdk/ui/tools/m;->djP:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, v0, Lcom/tencent/mm/pluginsdk/ui/tools/m;->daU:Landroid/widget/ImageView;

    sget v2, Lcom/tencent/mm/h;->ahl:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/tools/m;->fup:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :goto_0
    return-object p2

    .line 420
    :cond_1
    iget-object v2, v0, Lcom/tencent/mm/pluginsdk/ui/tools/m;->daU:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->fuh:Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/tools/FileExplorerUI;->h(Ljava/io/File;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v2, v0, Lcom/tencent/mm/pluginsdk/ui/tools/m;->djP:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v2, v0, Lcom/tencent/mm/pluginsdk/ui/tools/m;->fup:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyyy-MM-dd hh:mm:ss"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->K(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final rj(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/h;->euO:Ljava/lang/String;

    .line 341
    return-void
.end method
