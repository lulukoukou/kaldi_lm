
CPPFLAGS = -std=c++11
COMPILER = c++11 #$(shell $(CXX) -v 2>&1 )
ifeq ($(findstring clang,$(COMPILER)),clang)
    CXXFLAGS += -stdlib=libc++
    CXXFLAGS += -std=c++11
    LDFLAGS += -stdlib=libc++
endif

PROGRAMS = get_raw_ngrams uniq_to_ngrams merge_ngrams discount_ngrams interpolate_ngrams \
   compute_perplexity prune_ngrams

all: $(PROGRAMS)

clean:
	rm $(PROGRAMS)

merge_ngrams_online: merge_ngrams_online.cc

prune_ngrams: prune_ngrams.cc

discount_ngrams: discount_ngrams.cc


